require 'sinatra/base'
require 'kramdown'
require 'json'

module MagiWeb
  class App < Sinatra::Base
    set :public_folder, File.expand_path('public', __dir__)
    set :views, File.expand_path('views', __dir__)
    set :port, 4567

    get '/' do
      erb :dashboard
    end

    post '/run/:episode' do
      ep = params[:episode].to_s.rjust(2, '0')
      # Execute the original CLI script and capture output
      output = `ruby -I#{File.expand_path('../../lib', __dir__)} #{File.expand_path('../../bin/episodio', __dir__)} #{ep} 2>&1`
      exit_code = $?.exitstatus
      
      content_type :json
      { episode: ep, output: output, exit_code: exit_code }.to_json
    end

    get '/magi_eval/:episode' do
      ep = params[:episode].to_s.rjust(2, '0')
      db_path = File.expand_path('magi_database.json', __dir__)
      
      if File.exist?(db_path)
        db = JSON.parse(File.read(db_path))
        data = db[ep] || { "melchior" => "NO DATA", "balthasar" => "NO DATA", "casper" => "NO DATA" }
      else
        data = { "melchior" => "DB NOT FOUND", "balthasar" => "DB NOT FOUND", "casper" => "DB NOT FOUND" }
      end

      content_type :json
      data.to_json
    end

    get '/report/:episode' do
      @episode = params[:episode].to_s.rjust(2, '0')
      
      ep_titles = {
        1 => "Angel_Attack", 2 => "The_Beast", 3 => "A_Transfer", 4 => "Hedgehogs_Dilemma",
        5 => "Rei_I", 6 => "Rei_II", 7 => "A_Human_Work", 8 => "Asuka_Strikes",
        9 => "Both_of_You_Dance_Like_You_Want_to_Win", 10 => "Magmadiver",
        11 => "The_Day_Tokyo3_Stood_Still", 12 => "She_said_Dont_make_others_suffer",
        13 => "Lilliputian_Hitcher", 14 => "Weaving_a_Story", 15 => "Those_women_longed",
        16 => "Splitting_of_the_Breast", 17 => "Fourth_Child", 18 => "Ambivalence",
        19 => "Introjection", 20 => "Weaving_a_Story_2", 21 => "He_was_aware",
        22 => "Dont_Be", 23 => "Rei_III", 24 => "The_Beginning_and_the_End",
        25 => "Do_you_love_me", 26 => "Take_care_of_yourself"
      }
      title = ep_titles[@episode.to_i] || "Threat_Report"
      @page_title = "#{@episode}_#{title}_MAGI_Report"

      # Helper to read and render markdown
      docs_dir = File.expand_path("../../docs/episodios", __dir__)
      @sections = {}
      
      %w[briefing aparicion anatomia persistencia ttps deteccion prevencion playbook humanos lab aar].each do |section|
        file_path = File.join(docs_dir, "ep#{@episode}_#{section}.md")
        if File.exist?(file_path)
          content = File.read(file_path)
          @sections[section] = Kramdown::Document.new(content).to_html
        end
      end
      
      # Load MAGI consensus
      db_path = File.expand_path('magi_database.json', __dir__)
      @magi_consensus = if File.exist?(db_path)
                          db = JSON.parse(File.read(db_path))
                          db[@episode]
                        else
                          nil
                        end

      erb :report
    end
  end
end
