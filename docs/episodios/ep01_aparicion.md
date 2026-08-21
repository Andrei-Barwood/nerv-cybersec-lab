# Ep 01 — Aparición (primer contacto)

Episodio: 01 · *Angel Attack* · Sachiel · minuto cero
Alcance: lo observable. Sin core, sin AT Field en detalle, sin mina N², sin combate resuelto.

Esta spec tiene dos columnas: **escena** (memoria visual) y **first-seen** (lo que un SIEM vería). Sirve para dibujar y, más adelante, para reglas de detección.

---

## Minuto cero (escena)

Noche sobre el perímetro de Tokio-3. El suelo todavía huele a pólvora y a tierra removida. Los tanques de la ONU están en línea, como si esto fuera una guerra de manual. Disparan.

El impacto llega. Hay flash, hay ruido, hay una nube que debería significar baja. Cuando el humo baja, la silueta sigue ahí: bípeda, desproporcionada, demasiado alta para el encuadre de cualquier visor de artillería. No corre. No se agacha. Camina hacia la ciudad con la calma de algo que no ha leído el parte de bajas.

Un fluido oscuro, espeso, se abre en el pecho y en los flancos donde las granadas han tocado. No chorrea como sangre de animal herido: se despega, cuelga, vuelve a pegarse al cuerpo. El cuerpo no cae.

La cara no es una cara. Es una máscara de hueso claro, pico de ave, órbitas vacías, un agujero más en el centro. No hay expresión. El “rostro” es superficie: algo puesto delante de lo que importa, y nadie en esta línea de fuego sabe aún qué importa.

Desde un puesto de mando de la ONU se oye la palabra *enemigo*. Desde un sensor de NERV, otra etiqueta, más estrecha, más cara: el patrón no encaja en humano, no encaja en máquina, no encaja en fauna. El primer paquete es enorme, lento, inclasificable. Sigue andando.

---

## Lo que el perímetro cree que es

La ONU trata el contacto como **unidad enemiga de gran escala**: un tanque que camina, un biomonstruo de invasión, un objetivo de artillería. La doctrina es la de siempre: identificar silueta, abrir fuego, declarar impacto, esperar que deje de moverse.

En el lab, eso es el error clásico de first-seen:

| Lo que el perímetro registra | Lo que asume | Por qué falla |
|---|---|---|
| Blob enorme en el borde de la ciudad | Amenaza cinética convencional | Clasifica por tamaño, no por clase |
| No responde al fuego de tanques | “Hace falta más calibre” | Escala el mismo control en vez de cambiar de control |
| Fluido tras impacto | Herida = progreso | Confunde daño cosmético con contención |
| Avanza despacio | Tiempo de sobra | Lentitud ≠ bajo riesgo; el objetivo es el geofront, no el duelo |
| Bípedo con “cara” | Combatiente, se puede asustar / matar | Antropomorfiza una firma nueva |

**Log de perímetro (lo que existiría):** `contact.unclassified` → `fire.authorized` → `impact.observed` → `target.still_moving`.  
**Alerta que dispara:** “unidad hostil, fuego ineficaz, solicitar apoyo pesado”.  
**Lo que NO se sabe:** nombre, kill condition, si el fluido es sangre o señuelo, si el cuerpo que se ve es el objetivo, si volverá más capaz cuando el wipe falle. Eso aún no ha pasado. Aquí solo se ve que el manual de la ONU no muerde.

---

## Lo que NERV nombra (Pattern Blue) y por qué el nombre importa

NERV no dice “enemigo”. Dice **Pattern Blue**.

En este repo, Pattern Blue no es un color de pantalla: es un **cambio de doctrina**. El nombre obliga a dejar el playbook de ejército y abrir el de ángel. Tres consecuencias inmediatas:

1. **La clase del incidente cambia.** Ya no es “repeler invasor”. Es “primer contacto con una amenaza que el perímetro no está autorizado a entender”.
2. **La autoridad cambia.** Quien dispara tanques no es dueño de la respuesta. MAGI (stub) y NERV firman. El perímetro se convierte en testigo ruidoso.
3. **Alertar no es mitigar.** Pattern Blue puede ser verdadero positivo y Tokio-3 sigue sin operador listo, sin playbook maduro, con el blob andando.

**First-seen de SIEM (columna B):**

- **Log:** `siem.pattern_blue` candidato. Señales: perímetro reporta contacto no convencional; firma no encaja en humano/máquina; avance hacia activo de alto valor (geofront).
- **Alerta:** Pattern Blue — first-seen, confianza alta en “no es tanque”, confianza baja en “sabemos matarlo”.
- **Qué NO se sabe en el minuto cero:** si regenera, si muta, dónde está el core, qué rebota y qué no. Esas preguntas son de secciones 03–04. En detección basta: *blob enorme, lento, sin firma conocida, ignora fuego convencional, se dirige al centro*.

El nombre importa porque **congela el error de la ONU**: deja de ser “falta calibre” y pasa a ser “falta clase”. Un SIEM que acierta el nombre y no tiene playbook es, todavía, el episodio 01.

---

## Spec visual

Viñetas reutilizables. Lo observable. Sin ficha de wiki. Sin interior.

### Silueta
- Bípeda, de hombros anchos, brazos largos que cuelgan más de lo humano.
- Cabeza pequeña respecto al torso; el volumen está en el pecho y en las piernas.
- Contorno irregular, como carne gruesa o caparazón húmedo, no armadura de placas.
- De pie, llena el encuadre urbano: una figura donde debería haber un edificio bajo.

### Escala
- Los tanques le llegan a la canilla. Un humano a pie es un punto.
- Más alta que las primeras construcciones del perímetro; no “montaña”, sí “error de escala en el paisaje”.
- El first packet, en analogía de red: payload desproporcionado para el puerto donde aparece. Lento. No fragmentado. Un solo objeto que no debería caber.

### Movimiento
- Camina. No carga. Cada paso es un evento: suelo, escombro, tiempo.
- No esquiva el fuego. El fuego le ocurre encima.
- Dirección constante: hacia la ciudad, hacia el activo, no hacia el duelo con la ONU.
- Ritmo que invita a subestimar. Eso es parte de la firma: *slow-walk, high-value heading*.

### Fluido
- Tras impacto convencional, un líquido oscuro-rojizo se abre en la superficie del cuerpo.
- Es visible, es sucio, es cinematográfico. No es evidencia de kill.
- Gotea y se adhiere; no vacía al ángel. El cuerpo permanece opaco, lleno, de pie.
- En un log: `impact.fluid_observed` ≠ `target.down`. Tratar el fluido como “sangra, luego muere” es el sesgo que la sección 04 va a romper; aquí solo se anota que **el fluido existe y no decide nada**.

### Máscara
- Cráneo de ave puesto como careta: pico, hueso claro contra cuerpo oscuro.
- Órbitas huecas y un tercer vacío al centro. No hay ojos que devolver.
- No articula. No “mira” de forma humana. Es superficie que confunde: el analista clava la atención en la cara y pierde el resto de la silueta.
- En first-seen: `face-like overlay` — indicador de que lo visible puede no ser lo vulnerable. La hipótesis se escribe en la 03; en la 02 basta no fiarse de la máscara como blanco.

**Regla de alerta derivable de esta spec (para la 06, no implementarla aún):**  
contacto perímetro AND silueta bípeda de escala no humana AND fuego convencional sin caída AND heading hacia geofront AND firma no catalogada → candidato `siem.pattern_blue`.  
No hace falta ver el interior. El minuto cero ya es suficiente para nombrar mal (ONU) o nombrar bien (NERV) y, en ambos casos, no contener.

---

## Prompt de imagen (opcional, no ejecutar)

Night outskirts of a fortified Japanese mountain city, 1990s military realism mixed with slight unease, not anime screenshot, not official Evangelion still. A colossal bipedal figure walks slowly toward the lights, taller than the first row of buildings; long hanging arms, thick mottled dark-brown body, no plate armor. A pale bird-skull mask for a face: beak, empty sockets, a third hole in the center, no expression. UN tanks in the foreground fire; shell flashes wash the creature; dark reddish fluid opens on its chest and does not drop it. Smoke, dirt, gunpowder, wet asphalt. The figure keeps walking. Cinematic wide shot, ground-level with tanks for scale, documentary lighting, original creature design inspired by the description only — do not copy Gainax/Khara assets or trademarked character sheets.
