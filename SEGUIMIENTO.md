# SEGUIMIENTO — Ruta Data → AI

Tracker maestro derivado de `plan_definitivo_data_ai.md`.
**28 meses de contenido + 1 mes de hito de ingresos = 29 · 15 proyectos · ~2,300 horas · 3h/día (~90h/mes)**

Regla dura del plan: **no avanzas de fase sin haber entregado sus proyectos.** Los meses son unidades de contenido, no plazos.

> ⏱️ **Protocolo de atraso.** Un mes de 45h en vez de 90 va a pasar; el plan no falla por eso, falla por acumular deuda en silencio. Cuando lleves más de una semana de retraso: se recorta el alcance del mes en curso, no se extiende el calendario ni se "recuperan horas". Lo innegociable es lo que sostiene un mes posterior — los proyectos de la espina dorsal (3, 4, 6, 9, 11, 12, 13) y los temas marcados 🔢. Todo lo demás es recortable. Anotar el recorte en la columna de Notas del registro de horas.

**Objetivo de la ruta:** aprender y aumentar ingresos con lo aprendido. No es preparación para ningún programa académico; si eso aparece después, se decide después.

> 💰 **Track de ingresos — corre desde el mes 1.** Detalle completo en `TRACK_INGRESOS.md`. Cada mes tiene una línea 💰: no es estudio adicional, es documentar lo que ya haces. La numeración de los meses se mantiene igual que en el plan; el hito va entre el mes 8 y el mes 9 como bloque sin número.

---

## Tablero de proyectos

| # | Proyecto | Mes | Fase | Espina dorsal | Estado | Repo |
|---|---|---|---|---|---|---|
| 0 | Personal Finance Analyzer | 1 | 0 | | ☐ | |
| 1 | API → Python → PostgreSQL | 2 | 0 | | ☐ | |
| 2 | Exploratory Data Analysis | 4 | 1 | | ☐ | |
| 3 | Pipeline ETL + modelo dimensional | 5 | 1 | ● capa 1 | ☐ | |
| 4 | BI Dashboard + forecast | 6 | 1 | ● capa 2 | ☐ | |
| 5 | Experimentación + inferencia causal | 7 | 1 | | ☐ | |
| 6 | ML end-to-end con impacto de negocio | 12 | 2 | ● capa 3 | ☐ | |
| 7 | Deep Learning (clasificación de texto) | 15 | 2 | | ☐ | |
| 8 | Notebook → aplicación estructurada | 16 | 3 | | ☐ | |
| 9 | ML Model API | 17 | 3 | ● capa 4 | ☐ | |
| 10 | Stack conteneurizado | 19 | 3 | | ☐ | |
| 11 | AI Data Analyst | 21 | 3 | ● capa 5 | ☐ | |
| 12 | Document Intelligence + Knowledge Base | 22 | 3 | ● capa 6 | ☐ | |
| 13 | AI Business Agent | 23 | 3 | ● capa 7 | ☐ | |
| 14 | 🏆 AI BI Platform + caso de negocio | 26-28 | 4 | ● integración | ☐ | |

Estados: ☐ no iniciado · ◐ en curso · ⊗ bloqueado · ✔ entregado y revisado

---

## Registro de horas

| Mes | Objetivo | Reales | Δ | Notas |
|---|---|---|---|---|
| 1 | 90 | | | |
| 2 | 90 | | | |
| 3 | 90 | | | |
| 4 | 90 | | | |
| 5 | 90 | | | |
| 6 | 90 | | | |
| 7 | 90 | | | |
| 8 | 90 | | | |
| 💰 hito | 30 | | | mes de ingresos, estudio en mantenimiento |
| 9 | 90 | | | |
| 10 | 90 | | | |
| 11 | 90 | | | |
| 12 | 90 | | | |
| 13 | 90 | | | |
| 14 | 90 | | | |
| 15 | 90 | | | |
| 16 | 90 | | | |
| 17 | 90 | | | |
| 18 | 90 | | | |
| 19 | 90 | | | |
| 20 | 90 | | | |
| 21 | 90 | | | |
| 22 | 90 | | | |
| 23 | 90 | | | |
| 24 | 90 | | | |
| 25 | 90 | | | |
| 26 | 90 | | | |
| 27 | 90 | | | |
| 28 | 90 | | | |

**Semana de descanso programada:** cada 3 meses. Meses 3, 6, 9, 12, 15, 18, 21, 24, 27.

---

# FASE 0 — FUNDAMENTOS · Meses 1-3

> ⚠️ **Regla activa: el tutor no genera código en toda esta fase.** Solo revisa, explica y da pistas.

### Mes 1 — Python + SQL + Git en paralelo
`Horas: ___/90` · `Inicio: ____` · `Fin: ____`
- [ ] **Python 60%** — CS50P: variables, tipos, strings, listas, diccionarios, condicionales, loops, funciones, excepciones, archivos, debugging
- [ ] **SQL 30%** — Mode Analytics + SQLZoo: SELECT, WHERE, GROUP BY, HAVING, JOINs, agregaciones, alias, NULLs
- [ ] **Git 10%** — repos, commits, .gitignore, README, GitHub
- [ ] 📦 **Proyecto 0 — Personal Finance Analyzer** (CSV → Python y CSV → PostgreSQL, mismas respuestas por dos caminos)
- [ ] ➕ **Problemática de investigación** — 1 página: problema real, con dueño y con costo. Guardar en el repo y releer al cierre de cada fase.
- [ ] 💰 Crear `VALOR.md`. Registrar retroactivamente lo que ya hiciste en el trabajo (automatizaciones de Zapier/n8n, reportes, integraciones) con horas ahorradas estimadas
- [ ] 💰 Averiguar el ciclo de presupuesto y de evaluación de desempeño del despacho. La conversación de aumento se agenda contra ese calendario, no contra el mes 9
- [ ] Revisión de tutor cerrada

### Mes 2 — Python intermedio + SQL avanzado
`Horas: ___/90` · `Inicio: ____` · `Fin: ____`
- [ ] Python: módulos y paquetes, OOP, excepciones propias, JSON, `requests`, venvs, intro a `pytest`, breakpoints
- [ ] SQL: subqueries, CTEs, CASE WHEN, window functions (ROW_NUMBER, RANK, LAG/LEAD, running totals), self-joins
- [ ] Herramientas: VS Code serio (linting, formateo, debugger) + terminal — *The Missing Semester* (MIT)
- [ ] 📦 **Proyecto 1 — API → Python → PostgreSQL** (primer repo público serio, con tests y README completo)
- [ ] 💰 LinkedIn actualizado en inglés con el trabajo real que ya haces. No esperar al mes 9
- [ ] Revisión de tutor cerrada

### Mes 3 — NumPy/Pandas + arranque del track matemático
`Horas: ___/90` · `Inicio: ____` · `Fin: ____`
- [ ] NumPy: arrays, broadcasting, vectorización, indexación booleana
- [ ] Pandas: indexing, filtering, groupby, merge, pivot, fechas, missing values, apply vs. vectorización
- [ ] Jupyter: uso correcto y sus trampas (estado oculto, orden de ejecución)
- [ ] 🔢 **Track matemático arranca (1-2h/sem):** álgebra lineal y cálculo (3Blue1Brown), probabilidad básica
- [ ] 💰 Primer entregable real en el trabajo hecho con Python o SQL en vez de a mano. Anotarlo en `VALOR.md` con el antes y el después en horas
- [ ] Revisión de tutor cerrada
- [ ] 🛌 Semana de descanso

**Cierre de Fase 0:** programo de verdad, consulto bases de datos con soltura, manipulo datos.

---

# FASE 1 — DATA ANALYST · Meses 4-8

> Desde aquí: **todo entregable vive en un repo con estructura de paquete y al menos un test que valide la entrada de datos.**

### Mes 4 — EDA + estadística descriptiva + visualización
`Horas: ___/90` · `Inicio: ____` · `Fin: ____`
- [ ] Metodología EDA: raw → cleaning → EDA → estadística → visualización → insights
- [ ] Descriptiva: percentiles, varianza, distribuciones, outliers (IQR, z-score), correlación vs. covarianza
- [ ] Visualización: Matplotlib con control fino, Seaborn, elección de gráfico según el mensaje
- [ ] 🔢 Track matemático 1-2h/sem
- [ ] 📦 **Proyecto 2 — EDA** sobre dataset real y desordenado. Debe responder: qué ocurre, qué patrones, qué anomalías, qué recomiendo
- [ ] 💰 Buscar activamente que te asignen una tarea de análisis, no solo de reporte. Pedirla explícitamente
- [ ] Revisión de tutor cerrada

### Mes 5 — Modelado de datos e ingeniería ligera
`Horas: ___/90` · `Inicio: ____` · `Fin: ____`
- [ ] Modelado dimensional: hechos vs. dimensiones, esquema estrella, granularidad
- [ ] Normalización vs. desnormalización; PostgreSQL a fondo (tipos, índices, constraints, transacciones)
- [ ] Diseño de ETL en Python: extracción, transformación, carga, **idempotencia**, manejo de fallos
- [ ] Power Query (1 semana, no más) + calidad de datos: validaciones, tests de integridad
- [ ] ➕ **Gobernanza de datos (últimos 4-5 días):** linaje, clasificación y PII, retención y minimización, anonimización y sus límites, auditoría y control de acceso, Ley 29733 y nociones de GDPR
- [ ] 📦 **Proyecto 3 — Pipeline ETL automatizado** → *la base de datos de todo lo que viene después*
- [ ] 💰 **Mes de conversión alta:** un pipeline que hoy alguien corre a mano en el despacho, automatizado. Es el entregable interno más visible de toda la Fase 1
- [ ] Revisión de tutor cerrada
- [ ] 🛌 Semana de descanso

### Mes 6 — Power BI + data storytelling
`Horas: ___/90` · `Inicio: ____` · `Fin: ____`
- [ ] Data modeling y relaciones (conecta con el mes 5)
- [ ] DAX: medidas, columnas calculadas, contexto de filtro, inteligencia de tiempo
- [ ] Diseño de dashboards: jerarquía visual, densidad, accesibilidad
- [ ] Storytelling: estructura narrativa de un hallazgo — *Storytelling with Data*
- [ ] 📦 **Proyecto 4 — BI Dashboard.** Prueba de terminado: *"demuestra X, porque los datos muestran Y, por lo que recomiendo Z"*
- [ ] 💰 **Mes de conversión alta:** un dashboard que un socio del despacho abra por su cuenta. Que alguien con poder de decisión use algo tuyo semanalmente vale más que cualquier certificado
- [ ] 💰 Investigar rangos salariales reales: Data Analyst en Lima, y remoto para EE.UU./LatAm. Ver `TRACK_INGRESOS.md`
- [ ] Revisión de tutor cerrada

### Mes 7 — Inferencia, experimentación e inferencia causal
`Horas: ___/90` · `Inicio: ____` · `Fin: ____`
- [ ] **Sem 1-2:** muestreo y sesgo de selección, intervalos de confianza, t-test/chi²/ANOVA, p-valor (qué es y qué no), potencia, regresión lineal explicativa, diseño de A/B testing
- [ ] ➕ **Sem 3-4 — Inferencia causal:** resultados potenciales y contrafactuales, DAGs, confusores y **colliders**, amenazas a la validez, propensity scores y matching, diff-in-diff, regresión discontinua, variables instrumentales
- [ ] 🔢 Track matemático sube a 2h/sem
- [ ] 📦 **Proyecto 5** — (a) experimento completo con cálculo de tamaño de muestra; (b) ➕ estimación observacional de una intervención no aleatorizada. **El entregable clave es explicar por qué tu estimación podría estar mal.**
- [ ] 💰 Estimar el efecto de un cambio de proceso real del despacho. Poder decir *"esto causó X"* con método defendible es lenguaje de nivel directivo
- [ ] 💰 CV reescrito en inglés, orientado a impacto cuantificado, no a tareas
- [ ] Revisión de tutor cerrada

### Mes 8 — Series de tiempo + consolidación del portafolio
`Horas: ___/90` · `Inicio: ____` · `Fin: ____`
- [ ] ➕ **Sem 1-2 — Series:** descomposición, ACF/PACF, estacionariedad y diferenciación, suavizamiento exponencial, ARIMA/SARIMA, Prophet o regresión con lags, **backtesting con ventana deslizante** (nunca CV aleatoria), MAE/RMSE/MAPE y cuándo mienten, detección de anomalías
- [ ] **Sem 3-4 — Consolidación:** refactor de proyectos 1-5, READMEs completos en inglés, código limpio, visualizaciones publicables
- [ ] ➕ Módulo de forecast con intervalos de predicción añadido al dashboard del proyecto 4
- [ ] 💰 Portafolio navegable publicado + práctica de entrevistas SQL (DataLemur, StrataScratch) + caso de negocio de la conversación de tarifa preparado
- [ ] 🧠 **CHECKPOINT 1** — ¿Disfruto el análisis de negocio? Si el mes 5 me gustó especialmente, considerar **Analytics Engineer** (Fase 1 + meses 17-18)
- [ ] 🛌 Semana de descanso

---

# 💰 HITO DE INGRESOS · bloque sin número, entre el mes 8 y el mes 9

> **Mes dedicado, no paralelo.** Estudio en modo mantenimiento (1h/día máximo). Las otras 2h van a la conversación de tarifa, postulaciones, entrevistas y negociación.
> Playbook completo en `TRACK_INGRESOS.md`.

`Fecha objetivo: ____` · `Ciclo de presupuesto del despacho: ____`

**Disparador real:** no es el calendario, es tener (a) los proyectos 2-5 entregados, (b) `VALOR.md` con al menos tres impactos cuantificados y (c) un número de mercado verificado. Si eso se cumple en el mes 6, adelántalo. Si no se cumple en el mes 8, no lo fuerces.

**Ejecutar al menos una de las tres vías:**
- [ ] **Vía A — Retítulo y aumento interno.** Conversación agendada con el caso de negocio escrito. Pedir el cambio de título a Data Analyst aunque el dinero esté topado
- [ ] **Vía B — Remoto para fuera.** 30-50 postulaciones, no 5. Es un juego de números
- [ ] **Vía C — Segundo cliente.** Automatización y reportería para una PYME. Vendible desde hoy, sin esperar a la Fase 2

**Criterio de éxito — al menos uno:**
- [ ] Aumento significativo del ingreso mensual
- [ ] Cambio de título a Data Analyst (aunque el aumento sea menor de lo pedido)
- [ ] Segundo cliente firmado

**Si no sale:** extender un mes más, no abandonar. Si tampoco sale, seguir con la Fase 2 y reintentar en el mes 15 — con Data Science encima el argumento es otro. Lo que no se hace es dejarlo indefinido.

**Registro del resultado:**

| Vía | Qué hice | Resultado | Qué aprendí |
|---|---|---|---|
| A | | | |
| B | | | |
| C | | | |

## ⚠️ Replanificación obligatoria al cerrar el hito

Los meses 9-28 están escritos asumiendo las condiciones del mes 1: mismo puesto, 3h diarias, datos públicos o sintéticos. Si el hito sale, esas condiciones cambian y el plan tal cual deja de ser válido.

Antes de arrancar el mes 9, responder por escrito:

- [ ] **Horas reales disponibles ahora:** ___ /semana (si bajaron, el plan se estira o se recorta — se decide aquí, no sobre la marcha)
- [ ] **¿Tengo acceso a datos reales en el trabajo?** Si sí, los proyectos 6 en adelante se rehacen sobre ese dominio en vez de datos sintéticos
- [ ] **¿Cambió el destino?** Un puesto remoto de Data Analyst bien pagado puede volver opcional la Fase 3. Decidirlo explícitamente, no por inercia
- [ ] **¿Qué meses se recortan?** Con trabajo formal en datos, los meses 9-12 se aceleran porque los aplicas a diario

---

# FASE 2 — DATA SCIENCE · Meses 9-15

### Mes 9 — Python para DS + probabilidad para ML
`Horas: ___/90`
- [ ] scikit-learn: API fit/transform/predict, pipelines; **código en módulos, saliendo del notebook**
- [ ] Bayes aplicado, variables aleatorias, esperanza/varianza/covarianza, distribuciones y cuándo aparece cada una, máxima verosimilitud (conceptual)
- [ ] Regresión múltiple: supuestos, multicolinealidad, interpretación de coeficientes
- [ ] 🔢 Track matemático sube a 2-3h/sem

### Mes 10 — Machine Learning I
`Horas: ___/90`
- [ ] Andrew Ng — ML Specialization
- [ ] Regresión lineal como optimización, función de costo, gradient descent, learning rate
- [ ] Regresión logística, regularización L1/L2
- [ ] Árboles, Random Forest, Gradient Boosting (XGBoost, LightGBM)

### Mes 11 — Machine Learning II
`Horas: ___/90`
- [ ] SVM, KNN
- [ ] No supervisado: K-Means, DBSCAN, jerárquico
- [ ] Reducción de dimensionalidad: PCA, t-SNE/UMAP · detección de anomalías
- [ ] Ensambles: bagging, boosting, stacking
- [ ] **Pregunta guía:** *¿por qué este modelo y no aquel?* — debo poder defenderlo ante alguien que me cuestione

### Mes 12 — Evaluación de modelos y feature engineering
`Horas: ___/90` — *el mes más importante de la fase*
- [ ] Train/val/test, CV, validación temporal · overfitting y trade-off sesgo-varianza
- [ ] Precision, recall, F1, ROC-AUC, PR-AUC, log loss — y cuándo cada métrica engaña
- [ ] **Data leakage** · clases desbalanceadas (class weights, SMOTE, umbral)
- [ ] Feature engineering sistemático · tuning (grid, random, Optuna) · SHAP y permutation importance
- [ ] 📦 **Proyecto 6 — ML end-to-end** sobre los datos del proyecto 3. Debe incluir el **costo de negocio de un falso positivo vs. un falso negativo**
- [ ] Revisión de tutor cerrada
- [ ] 🛌 Semana de descanso

### Mes 13 — Matemáticas para ML + implementación desde cero
`Horas: ___/90`
- [ ] **Sem 1-2:** representación matricial (Xw), derivadas parciales y ∇J, regla de la cadena, por qué converge gradient descent, conexión derivada→regla de actualización
- [ ] ➕ **Teoría de la información (~6h):** entropía, entropía cruzada, divergencia KL, información mutua
- [ ] **Sem 3-4 — solo con NumPy:** regresión lineal con GD, regresión logística, red de 2 capas con backprop manual
- [ ] 🔢 **El track matemático se cierra aquí.** A partir del mes 14 las matemáticas se usan, no se estudian

### Mes 14 — Deep Learning I (PyTorch)
`Horas: ___/90`
- [ ] Tensores, autograd, GPU · capas y activaciones · loss functions y optimizadores (SGD, Adam)
- [ ] **Training loops escritos por mí**, no copiados · batching y DataLoaders
- [ ] Dropout, batch norm, early stopping

### Mes 15 — Deep Learning II + embeddings
`Horas: ___/90`
- [ ] MLP sobre tabular y texto · **embeddings** (el concepto puente hacia toda la Fase 3)
- [ ] CNN conceptual (3-4 días, no más) · transfer learning y fine-tuning (conceptual)
- [ ] NLP clásico: tokenización, bag of words, TF-IDF
- [ ] 📦 **Proyecto 7 — Deep Learning:** clasificación de texto con training loop propio y **comparación honesta contra un baseline clásico**. Si no le gana a un XGBoost afinado, decirlo
- [ ] 🧠 **CHECKPOINT 2** — ¿Data Science es el destino final y no una escala? En este punto ya puedo postular a Data Scientist o Junior ML Engineer
- [ ] 🛌 Semana de descanso

---

# FASE 3 — AI ENGINEERING · Meses 16-25

> ⚠️ **Regla activa meses 16-18: el tutor no genera la solución.** Escribo yo primero. Sí puede mostrar el ejemplo mínimo canónico de una librería nueva (FastAPI, Pydantic, SQLAlchemy, Alembic): 3-5 líneas del propio manual, y yo construyo encima. Lo que no da es mi ejercicio ni mi proyecto resueltos.

### Mes 16 — Ingeniería de software en Python
`Horas: ___/90`
- [ ] Decoradores, generadores, context managers, comprehensions
- [ ] **Type hints y `typing`** (no negociable) · OOP aplicado: composición sobre herencia, interfaces, inyección de dependencias
- [ ] Clean code, logging estructurado · testing serio: pytest, fixtures, mocking, cobertura, integración
- [ ] Estructura de proyectos: packages, `pyproject.toml`, `uv` o Poetry · ruff, black, mypy
- [ ] Git avanzado: branches, PRs, rebase, conflictos, versionado semántico
- [ ] ➕ **DSA (última semana y media):** notación O en tiempo y espacio; listas enlazadas, pilas, colas, **hash tables**, árboles, heaps, **grafos**; búsqueda y ordenamiento, divide y vencerás, voraces, DP; **BFS/DFS** — necesario en el mes 23, un agente con LangGraph *es* un grafo. 25-30 problemas fáciles-medios, no más
- [ ] 📦 **Proyecto 8 — Notebook → aplicación:** el proyecto 6 convertido en app estructurada con módulos, config externa, tests, CLI y logging
- [ ] Revisión de tutor cerrada

### Mes 17 — APIs y FastAPI
`Horas: ___/90`
- [ ] HTTP a fondo: métodos, códigos, headers, idempotencia · diseño REST: recursos, versionado, paginación, errores
- [ ] FastAPI: routers, dependencias, middleware, background tasks · Pydantic: validación y serialización
- [ ] Autenticación: API keys, JWT, OAuth básico · OpenAPI
- [ ] 📦 **Proyecto 9 — ML Model API** con tests, autenticación y documentación
- [ ] Revisión de tutor cerrada

### Mes 18 — Bases de datos en producción y asincronía
`Horas: ___/90`
- [ ] PostgreSQL avanzado: índices B-tree y GIN, planes de ejecución, transacciones y aislamiento, connection pooling
- [ ] Migraciones con Alembic · SQLAlchemy (y cuándo **no** usarlo)
- [ ] Redis: caché, rate limiting, colas simples
- [ ] async/await: concurrencia vs. paralelismo, cuándo async ayuda y cuándo no
- [ ] Diseño de esquemas para cargas mixtas (analíticas + transaccionales)
- [ ] 🛌 Semana de descanso

### Mes 19 — Docker y despliegue local
`Horas: ___/90`
- [ ] Imágenes, contenedores, Dockerfile, multi-stage builds
- [ ] Docker Compose: app + PostgreSQL + Redis · volúmenes, redes, variables de entorno, secretos
- [ ] Optimización de tamaño de imagen y tiempos de build
- [ ] 📦 **Proyecto 10 — Stack conteneurizado:** todo arriba con un solo `docker compose up`
- [ ] Revisión de tutor cerrada

### Mes 20 — Transformers y fundamentos de LLMs
`Horas: ___/90`
- [ ] Tokenización (BPE, subword) y su impacto en costos · de word2vec a embeddings contextuales
- [ ] **Atención y self-attention** · positional encoding · encoder/decoder, BERT-like vs. GPT-like
- [ ] Pretraining, fine-tuning, RLHF (conceptual) · inferencia: context window, temperatura, sampling, top-p
- [ ] Hugging Face: transformers, datasets, modelos preentrenados
- [ ] *Objetivo: entendimiento arquitectónico. No entreno un transformer desde cero*

### Mes 21 — LLM Engineering
`Horas: ___/90`
- [ ] APIs de LLM: mensajes, system prompts, parámetros · prompt engineering serio, chain-of-thought, prompt caching
- [ ] **Structured output** con validación Pydantic · **function calling / tool use** · streaming
- [ ] Gestión de contexto en conversaciones largas · economía: tokens, costo por request, latencia, elección de modelo por tarea
- [ ] Robustez: reintentos, rate limits, fallbacks, timeouts
- [ ] ➕ **Serving (última semana):** prefill vs. decode, **KV cache**, batching continuo, throughput vs. latencia, **cuantización** int8/int4, Ollama y vLLM, criterio API vs. modelo propio
- [ ] 📦 **Proyecto 11 — AI Data Analyst:** pregunta → LLM genera SQL → PostgreSQL → análisis → respuesta con evidencia
- [ ] Revisión de tutor cerrada
- [ ] 🛌 Semana de descanso

### Mes 22 — RAG + extracción de documentos
`Horas: ___/90` — *el añadido de mayor valor diferencial de la v2*
- [ ] ➕ **Sem 1 — Ingesta:** OCR (Tesseract y cuándo falla), layout parsing, **extracción de tablas** (Camelot, pdfplumber), **VLMs** para extracción estructurada con esquema Pydantic, extracción contra esquema definido primero, verificación con ground truth y validación cruzada de campos
- [ ] **Sem 2-4 — RAG:** elección de modelo de embedding, estrategias de chunking, **pgvector**, búsqueda híbrida (denso + BM25), filtros por metadata, reranking con cross-encoders
- [ ] Evaluación de RAG: recuperación y generación por separado — fidelidad, relevancia, groundedness
- [ ] 📦 **Proyecto 12 — Document Intelligence + Knowledge Base.** Requisitos: (1) ≥100 preguntas de evaluación con resultados medidos; (2) precisión y recall **por campo**, no global; (3) toda respuesta cita documento y página. Documentos públicos, nunca del despacho
- [ ] Revisión de tutor cerrada

### Mes 23 — Agentes
`Horas: ___/90`
- [ ] ReAct, planificación, reflexión, patrones de orquestación · tool calling avanzado, estado, memoria corta y larga
- [ ] **MCP** como protocolo, no como moda · **LangGraph** — pero primero un agente a mano para ver qué abstrae el framework
- [ ] Agentic RAG · guardrails: límites de acción, validación de outputs, aprobación humana en pasos críticos
- [ ] Evaluación de agentes: **trayectorias, no solo respuestas**
- [ ] 📦 **Proyecto 13 — AI Business Agent** (herramientas: SQL, RAG, modelo ML, APIs, Python)
- [ ] Revisión de tutor cerrada

### Mes 24 — Evaluación, MLOps y LLMOps
`Horas: ___/90` — *la habilidad más escasa del stack*
- [ ] Datasets de evaluación, evals automatizados, LLM-as-judge y sus sesgos, detección de regresiones
- [ ] CI/CD con GitHub Actions · logging estructurado y tracing distribuido
- [ ] Observabilidad de LLMs (LangSmith/Langfuse) · MLflow para experimentos y versionado
- [ ] Monitoreo: drift de datos y de modelo, latencia p50/p95/p99, costo por request
- [ ] Optimización: caching semántico, batching, routing entre modelos por dificultad
- [ ] 🛌 Semana de descanso

### Mes 25 — Cloud (AWS)
`Horas: ___/90`
- [ ] IAM: usuarios, roles, políticas, **mínimo privilegio** · EC2/ECS · S3 · RDS · Lambda
- [ ] CloudWatch: logs, métricas, alarmas · Secrets Manager
- [ ] Nociones de costo · *si la empresa usa Azure o GCP, aprender ese*
- [ ] ⚠️ **Verificar vigencia:** los meses 22-24 cubren lo que más rápido cambia. Revisar qué frameworks siguen vivos antes de comprometerse

---

# FASE 4 — CAPSTONE · Meses 26-28

> **Cero tecnologías nuevas.** Tres meses construyendo, integrando, midiendo y documentando.

### 🏆 Proyecto 14 — AI Business Intelligence Platform
`Horas: ___/270`

**Capas a integrar:** datos (mes 5) · analytics (4, 9) · BI (6) · ML (12, 14) · LLM (21) · RAG (22) · agentes (23) · backend (17) · datos en producción (18) · Docker (19) · AWS (25) · observabilidad (24)

**Entregables:**
- [ ] 1. Sistema funcionando y desplegado
- [ ] 2. Suite de evaluación con métricas reales: precisión, latencia, costo por consulta
- [ ] 3. Documentación de arquitectura: qué decidí y **por qué descarté las alternativas**
- [ ] 4. README profesional con demo en video o GIF
- [ ] 5. Artículo público en inglés — considerar el ángulo **IA + derecho**, no solo el problema técnico
- [ ] 6. Refactor final del código antiguo con lo aprendido en el mes 16
- [ ] 7. ➕ **Caso de negocio:** costo unitario por consulta · TCO a 12 meses · beneficio cuantificado · punto de equilibrio · análisis de sensibilidad (volumen ×3, proveedor +40%, migración a modelo local) · la alternativa que no elegí

---

# CIERRES DE FASE

Al terminar cada fase, releer la **problemática de investigación** del mes 1 y responder por escrito:

| Fase | Fecha | ¿Sigue siendo AI Engineering el destino? | ¿Qué cambiaría del plan? |
|---|---|---|---|
| 0 | | | |
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |

*Este documento es un mapa, no un contrato.*
