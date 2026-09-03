# Guía del sistema

Cómo se monta y cómo se opera. Leer una vez, luego solo consultar las secciones C y D.

---

## A. Montaje del Project (15 minutos, una sola vez)

1. Ir a **claude.ai/projects** → **"+ New Project"**.
2. Nombre: **`Ruta Data → AI (29 meses)`**. *Claude no ve el nombre ni la descripción*, son solo para ti.
3. Clic en **"Set project instructions"** y pegar el contenido de `INSTRUCCIONES_PROJECT.md` de la línea horizontal hacia abajo. Guardar.
4. En el panel de **Context** (lado derecho), clic en **"+"** y subir **cinco** archivos:

| Archivo | Para qué lo lee el tutor |
|---|---|
| `plan_definitivo_data_ai.md` | la fuente: qué toca en cada mes |
| `SEGUIMIENTO.md` | qué llevo hecho y con cuántas horas |
| `ESTADO.md` | dónde estoy esta semana |
| `TRACK_INGRESOS.md` | el playbook de la conversación de aumento |
| `ERRORES.md` | mis malentendidos acumulados, para los quiz |

`VALOR.md` **no** va al knowledge base todavía: vive solo en el repo y lo pegas en el chat cuando lo trabajes. Súbelo a partir del mes 6, cuando empiece a alimentar la conversación de tarifa.

**Los nombres de archivo importan.** Las instrucciones referencian estos nombres exactos, sin prefijos numéricos. Si subes `03_SEGUIMIENTO.md`, la referencia a `SEGUIMIENTO.md` puede no resolver y la instrucción se ignora en silencio.

**Cómo funcionan los Projects, y por qué existen estos archivos:** los chats dentro de un Project **no comparten contexto entre sí**. Solo se comparte el knowledge base. Lo que descubras en el chat del mes 4 no existe para el chat del mes 5 salvo que lo escribas en `ESTADO.md` o `ERRORES.md` y vuelvas a subirlo. Esa es la razón entera del sistema.

**Al actualizar un archivo:** borra la versión vieja del knowledge base antes de subir la nueva. Si dejas las dos, se contradicen y las respuestas empeoran.

---

## B. Montaje del repositorio (5 minutos)

```bash
bash crear_estructura.sh
cd ruta-data-ai
```

Estructura mínima:

```
ruta-data-ai/
├── 00-plan/          plan_definitivo_data_ai.md, INSTRUCCIONES_PROJECT.md, GUIA_DEL_SISTEMA.md
├── SEGUIMIENTO.md
├── ESTADO.md
├── ERRORES.md
├── TRACK_INGRESOS.md
├── VALOR.md
└── projects/         un directorio por proyecto entregado
```

Sube el repo a GitHub como **público**. Es tu portafolio desde el día uno, no al final.

**No hay `BITACORA.md`.** El registro diario son tus mensajes de commit. Escríbelos descriptivos (`add outlier detection with IQR; z-score failed on skewed data`) y en el mes 20 `git log` será un reflejo del recorrido sin haber mantenido un archivo más durante dos años y medio.

---

## C. Tareas programadas del Project

Los rituales no deben depender de que te acuerdes. Móntalos en **Scheduled** (panel derecho del Project, "+") **antes de empezar**, no después de la primera vez que los saltes. Dos bastan.

**1 — Cierre de semana · domingos 8:00 pm**

```
Lee ESTADO.md y SEGUIMIENTO.md. Hazme el cierre semanal:
horas reales de la semana, qué checkboxes cerré, qué quedó a medias,
qué error conceptual nuevo apareció y qué necesito de ti la semana que viene.
Con mis respuestas devuélveme: (a) el ESTADO.md nuevo completo, listo para
reemplazar en el knowledge base; (b) las líneas de SEGUIMIENTO.md que debo
marcar; (c) el bloque de la semana entrante repartido en 21 horas.
Si llevo más de una semana de atraso, aplica la Regla 9: recorta alcance
y dime qué es innegociable.
```

**2 — Cierre de mes · día 1 de cada mes, 9:00 am**

```
Según SEGUIMIENTO.md, ¿qué mes debería estar cerrando?
Hazme un quiz de 10 preguntas basado en ERRORES.md, mezclando errores
de los últimos tres meses, no solo del actual. Corrígeme una por una.
Después: (a) dime si el proyecto del mes puede marcarse ✔ o qué le falta
según la Regla 8; (b) recuérdame cerrar el bloque de horas del mes con
la desviación real.
```

Una tercera, **solo a partir del mes 20**: *"Busca si hubo cambios relevantes este mes en el ecosistema de LLMs, RAG, agentes o MLOps que afecten los meses 20-25 del plan. Si algo quedó obsoleto, dímelo."*

---

## D. Cómo se reparten los chats

La unidad no es el tiempo: es **cuánto necesita seguir caliente el contexto**. No uses un solo chat gigante — los chats largos se degradan, el tutor pierde precisión y lo útil se diluye entre cosas viejas.

**Prerrequisito:** activa **Search and reference chats** (Ajustes > Memoria). Es lo que permite recuperar un chat anterior bajo demanda. La memoria automática no hace falta: todo lo estable ya está en las instrucciones, y una memoria que guarde "está en el mes 4" competiría con `ESTADO.md` como fuente de verdad.

### Tipo 1 — Chat de la semana
`M04-S02 — EDA y outliers` · nace el lunes, muere el domingo.

Dudas de concepto, ejercicios, revisiones cortas. Contexto que caduca en siete días. Se descarta sin culpa: si algo de aquí merecía sobrevivir, era un error conceptual y ya está en `ERRORES.md`.

### Tipo 2 — Chat del proyecto
`M05-P03 — Pipeline ETL` · dura lo que dura el proyecto, no la semana.

**Uno por proyecto entregable del tablero, no uno por mes.** Son 15 proyectos en 28 meses; trece meses no tienen ninguno y ahí basta con el chat semanal. Meses con proyecto: 1, 2, 4, 5, 6, 7, 12, 15, 16, 17, 19, 21, 22, 23. El capstone (26-28) se parte por capa, no por mes.

Aquí solo entran decisiones de diseño, arquitectura y revisiones del entregable. El chat se cierra cuando el proyecto se marca ✔, no el día 30. Si el proyecto se apoya en uno anterior, pide en el primer mensaje que se busque ese chat.

### Tipo 3 — Chat de un solo uso
`M05-X — Revisión P03 v2` · se abre, hace una cosa, se cierra.

Revisiones completas con rúbrica, cierres de mes, quiz de `ERRORES.md`, simulación de la conversación de tarifa. Se aíslan porque son voluminosos y porque no deben contaminar una sesión de estudio. Las tareas programadas de la sección C caen aquí solas.

### Tipo 4 — Criterio de modelos (uno solo, meses 9-12)
`F2 — Criterio de modelos`

Excepción única de la ruta. Los meses 9-11 no tienen proyecto pero sí un hilo acumulativo: aprendes modelos para decidir en el mes 12 cuál usar y por qué. Ese hilo necesita un chat propio.

### Enrutado
Tres preguntas en orden: ¿lo va a necesitar el proyecto en dos semanas? → chat del proyecto. ¿Es una operación cerrada y pesada que empieza y termina hoy? → un solo uso. ¿Ninguna? → chat de la semana.

**Dos chats abiertos a la vez** en un mes con proyecto, uno en un mes sin proyecto. Más de tres y estás administrando chats en vez de estudiar.

Si a mitad del chat semanal descubres que estás decidiendo arquitectura, no muevas la conversación: ciérrala ahí y abre el chat del proyecto con dos líneas que resuman la decisión y el porqué. El ruido en la dirección contraria (una duda conceptual dentro del chat del proyecto) es barato y no hace falta corregirlo.

### El prefijo
`M04-S02`, `M05-P03`, `M05-X`, `F2`. La lista se ordena sola por mes y distingues de un vistazo el tipo. En el mes 22, con más de cien chats, esa convención es la diferencia entre encontrar algo en cinco segundos y no encontrarlo.

---

## E. Prompts de apertura

### Chat semanal — cada lunes

```
Mes 4, semana 2. Chat de estudio de la semana.

Esta semana toca: [temas del bloque de SEGUIMIENTO.md].
Vengo de: [qué cerré la semana pasada].

Antes de empezar, lee ESTADO.md y confirma en una línea si coincide
con lo que acabo de decir. Si no coincide, dime qué está desactualizado.

Aquí voy a traerte dudas de concepto, ejercicios y revisiones cortas.
Lo que sea decisión de diseño del proyecto del mes va a otro chat, así
que si detectas que estoy decidiendo arquitectura aquí, párame y dímelo.
```

### Chat de proyecto — una vez, al arrancar

```
Chat del Proyecto 3 — Pipeline ETL + modelo dimensional (mes 5).
Este chat dura todo el proyecto, no la semana. Aquí solo van decisiones
de diseño, arquitectura y revisiones del entregable.

Antes de escribir una línea de código quiero cerrar el encuadre.
Hazme las preguntas necesarias para definir:
1. Qué problema de negocio resuelve, en el dominio de operaciones legales.
2. De dónde salen los datos y por qué esa fuente es defendible.
3. Qué cuenta como "terminado", en criterios verificables, no en sensación.
4. Qué decisiones de diseño voy a tener que tomar y en qué orden.

Regla de este chat: cada vez que tome una decisión de arquitectura,
me la devuelves formulada en una línea con el porqué, para que yo la
copie al README. Si a mitad del proyecto contradigo una decisión previa
de este chat, señálamelo antes de responder.
```

Si el proyecto se apoya en uno anterior, añadir al inicio:

```
Este proyecto se construye sobre el Proyecto 3. Busca el chat M05-P03 y
recupera el esquema de la base y las decisiones de granularidad antes de
responder.
```

### Chat de un solo uso — revisión con rúbrica

*Aquí está el 80% del valor de todo el sistema.*

```
Revisión con rúbrica. Mes 5, Proyecto 3.

Qué intenté: [lo que hice]
Dónde me trabé: [el punto exacto]
Cuánto tiempo llevo atascado: [debe ser ≥20 min reales]
Qué ya descarté: [lo que probé y no funcionó]

[código o link al repo]

Aplica la rúbrica en orden. En el paso 2, formula el error conceptual
ya redactado en el formato de ERRORES.md para que lo copie tal cual.
Termina con veredicto explícito.
```

**Antes de pedir revisión: 20 minutos reales de atasco.** El valor de una revisión es proporcional a lo que intentaste antes. El tutor no tiene forma de saber si te atascaste, así que ese filtro lo pones tú.

### Chat de un solo uso — simulación de negociación (mes del hito)

```
Simulación. Tú eres el socio administrador del despacho: escéptico,
con presupuesto ajustado, y no eres técnico. Aquí está mi caso de
negocio [pegar VALOR.md o la página]. No me la pongas fácil, presiona
por el número y por qué debería pagarlo. Al final, dime dónde se me
cayó el argumento.
```

### Chat de criterio de modelos — meses 9-12

```
Chat de criterio de modelos. Vive de los meses 9 al 12.
No es para dudas ni ejercicios: esas van al chat semanal.

Cada vez que aprenda un modelo nuevo, vengo aquí y tú me devuelves
una ficha de cuatro líneas, siempre el mismo formato:
- Qué asume sobre los datos
- Cuándo es la elección correcta
- Cuándo falla, con un ejemplo concreto
- Contra qué lo compararías y qué esperarías ver

Al final de cada mes, hazme elegir un modelo para un problema que
tú inventes del dominio legal y defenderlo. Si mi defensa se apoya
en "suele funcionar bien", recházala.
```

### Pedir ejercicios — dentro del chat semanal

```
Mes 4, tema: detección de outliers. Ya hice el bloque de estadística descriptiva.
Dame 3 ejercicios: uno mecánico, uno aplicado a datos sucios, uno que me obligue
a decidir un criterio y defenderlo. Sin solución, con criterios de aceptación.
```

### Cierre de chat — dos minutos, al final de cualquiera

```
Cierre de chat. Dime en cuatro líneas: qué error conceptual apareció y cómo
lo escribo en ERRORES.md, qué cambia en ESTADO.md, qué decisión técnica debe
quedar documentada en el repo, y qué puedo descartar.
```

**Sobre el estilo Learning:** actívalo (menú de herramientas → "Use style") para dudas de concepto. Apágalo para revisiones: ahí quieres respuesta directa, no que te la hagan adivinar.

---

## F. Qué NO meter en el Project

- Material real del despacho. Ni un archivo. Todo el plan está diseñado con datos públicos o sintéticos precisamente por esto.
- Chats de temas ajenos a la ruta (maestrías, decisiones de carrera, migración). Van fuera; el Project se enfoca o pierde filo.
- Versiones viejas de archivos. Borrar antes de subir la nueva.
- Un segundo plan de estudios. Dos planes es lo mismo que ninguno: `plan_definitivo_data_ai.md` es la fuente única y no se toca.

---

## G. Estructura temporal — resuelta

28 meses de contenido + 1 bloque de hito de ingresos entre el mes 8 y el mes 9 = **29 meses reales**. El hito va sin número para que el tracker y el archivo del plan sigan hablando el mismo idioma; la numeración de los meses no cambia.

**Al cerrar el hito hay una replanificación obligatoria** (está en `SEGUIMIENTO.md`). Los meses 9-28 asumen las condiciones del mes 1 — mismo puesto, 3h diarias, datos sintéticos. Si consigues el puesto de Data Analyst, esas condiciones dejan de ser ciertas y el plan se reescribe ahí, con datos reales y con las horas que de verdad tengas.

---

## H. Archivos del sistema

| Archivo | Dónde vive | Cada cuánto se toca |
|---|---|---|
| `plan_definitivo_data_ai.md` | repo + knowledge | nunca (es la fuente) |
| `SEGUIMIENTO.md` | repo + knowledge | semanal — histórico: checkboxes y horas |
| `ESTADO.md` | repo + knowledge | semanal — solo el presente |
| `ERRORES.md` | repo + knowledge | cada error conceptual; se sube el domingo |
| `TRACK_INGRESOS.md` | repo + knowledge | por fase |
| `VALOR.md` | repo (knowledge desde el mes 6) | cada entregable en el trabajo |

Cuatro archivos vivos, un ritual semanal de diez minutos y dos tareas programadas. Ese es todo el mantenimiento. Si algún mes se vuelve más pesado que eso, algo sobra — y lo que sobra se borra, no se posterga.
