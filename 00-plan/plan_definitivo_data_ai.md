# PLAN DEFINITIVO
## Data Analyst → Data Scientist → AI Engineer

**Ritmo:** 3h/día (~21h/semana, ~90h/mes)
**Duración:** 25 meses de formación + 3 de capstone = **28 meses**
**Perfil de partida:** Excel intermedio-avanzado, cálculo y estadística universitarios (finanzas), R olvidado, lógica de automatización (Zapier, HubSpot workflows, custom code nodes), trabajo actual en datos dentro de un área de tecnología.

---

## Los cuatro principios de este plan

**1. Track matemático continuo, no bloques.**
Desde el mes 3 hasta el mes 13 llevas matemáticas en paralelo, subiendo de intensidad. Nunca es una materia aparte que interrumpe: es 1-3h semanales que van reactivando y luego profundizando lo que ya viste en la universidad.

**2. Los proyectos se encadenan.**
No son 12 repositorios independientes. Son capas de un mismo sistema que crece. Tu GitHub debe contar la historia: *analicé datos → los modelé → construí software alrededor → construí sistemas de IA sobre eso.*

**3. Un README estándar para todo proyecto:**
```
README
├── Business Problem
├── Dataset & Sources
├── Methodology
├── Analysis / Architecture
├── Results & Metrics
├── Limitations
└── Recommendations / Next steps
```
La sección de limitaciones es la que más te distingue. Casi nadie la escribe, y es la que demuestra criterio.

**4. Tu trabajo actual es parte del plan.**
Cada tema que puedas aplicar a un problema real de tu empresa, aplícalo. Y busca activamente que te asignen tareas que rocen la fase siguiente.

**Dominio recomendado para el hilo conductor:** algo estructuralmente parecido a lo que ya manejas (gestión de casos, pipeline comercial, operaciones de servicio), con datos sintéticos o públicos. Así tu conocimiento de negocio es ventaja y no hay problemas de confidencialidad.

---

# FASE 0 — FUNDAMENTOS
### Meses 1-3

## Mes 1 — Python + SQL + Git (en paralelo)

**Python (60% del tiempo)** — base: CS50P (cs50.harvard.edu/python, gratis)
Variables, tipos, operadores, strings, listas, diccionarios, condicionales, loops, funciones, manejo de excepciones, lectura/escritura de archivos, debugging.

**SQL (30%)** — base: Mode Analytics SQL Tutorial + SQLZoo
SELECT, WHERE, ORDER BY, GROUP BY, HAVING, JOINs (inner/left/right/full), agregaciones (COUNT, SUM, AVG, MIN, MAX), alias, NULL handling.

**Git (10%)** — repositorios, commits, .gitignore, README, GitHub
Recurso: "Git and GitHub for Beginners" (freeCodeCamp).

> **Por qué en paralelo:** cargar el mismo dataset en Python y consultarlo en SQL en la misma semana hace que ambos se refuercen. Vas a ver que `GROUP BY` y un `for` con diccionario resuelven el mismo problema de dos formas, y eso construye intuición.

### 📦 Proyecto 0 — Personal Finance Analyzer
```
CSV → Python (limpieza, cálculos, estadísticas) → reporte en consola
CSV → PostgreSQL → las mismas respuestas vía SQL
```
Objetivo: comparar ambos enfoques y entender cuándo conviene cada uno.

## Mes 2 — Python intermedio + SQL avanzado

**Python:** módulos y paquetes, OOP (clases, métodos, herencia), excepciones personalizadas, JSON, consumo de APIs con `requests`, virtual environments, introducción a `pytest`, debugging con breakpoints.

**SQL:** subqueries, CTEs, CASE WHEN, window functions (ROW_NUMBER, RANK, LAG/LEAD, running totals, particiones), self-joins, joins múltiples complejos.

**Herramientas:** VS Code (configuración seria: linting, formateo, debugger), terminal/Linux básico.
Recurso para terminal: MIT "The Missing Semester of Your CS Education".

### 📦 Proyecto 1 — API → Python → PostgreSQL
```
API pública → Python → JSON parsing → limpieza → PostgreSQL → queries analíticas
```
Tu primer repositorio público serio. Con tests básicos y README completo.

## Mes 3 — NumPy/Pandas + arranque del track matemático

**Python para datos (2.5h/día):**
- NumPy: arrays, broadcasting, operaciones vectorizadas, indexación booleana
- Pandas: DataFrames, indexing, filtering, groupby, merge/join, pivot, manejo de fechas, missing values, apply vs. vectorización
- Jupyter: uso correcto (y sus trampas: estado oculto, orden de ejecución)

**🔢 Track matemático arranca — 1-2h/semana (reactivación, no aprendizaje):**
- Álgebra lineal: vectores, matrices, producto punto, norma → 3Blue1Brown "Essence of Linear Algebra"
- Cálculo: funciones, derivadas, derivadas parciales → 3Blue1Brown "Essence of Calculus"
- Probabilidad: eventos, probabilidad condicional, variables aleatorias

> No busques dominarlas ahora. Estás despertando lo que ya estudiaste en finanzas.

**Al cerrar la Fase 0:** programas de verdad, consultas bases de datos con soltura y manipulas datos. Todo lo demás se construye encima de esto.

---

# FASE 1 — DATA ANALYST
### Meses 4-8

## Mes 4 — EDA + estadística descriptiva + visualización

**Metodología de EDA:**
```
Raw data → Cleaning → EDA → Estadística → Visualización → Insights
```

**Estadística descriptiva:** media, mediana, moda, percentiles, varianza, desviación estándar, distribuciones, detección de outliers (IQR, z-score), correlación vs. covarianza.

**Visualización:** Matplotlib (control fino, no solo `plt.plot`), Seaborn, elección de gráfico según el mensaje.

**🔢 Track matemático:** 1-2h/semana, continúa.

### 📦 Proyecto 2 — Exploratory Data Analysis
Dataset real y desordenado (ventas, marketing, clientes u operaciones). El entregable debe responder: qué está ocurriendo, qué patrones hay, qué anomalías existen, qué recomendarías.

## Mes 5 — Modelado de datos e ingeniería ligera

*Este mes no está en la mayoría de rutas de Data Analyst, y es exactamente el que más te conviene por tu trabajo actual.*

- **Modelado dimensional:** tablas de hechos vs. dimensiones, esquema estrella, granularidad
- Normalización vs. desnormalización, y cuándo conviene cada una
- **PostgreSQL más a fondo:** tipos de datos, índices, constraints, transacciones
- **Diseño de ETL en Python:** extracción, transformación, carga, idempotencia, manejo de fallos
- Power Query (1 semana — ya tienes Excel avanzado, no necesitas más)
- Calidad de datos: validaciones, tests de integridad, documentación de supuestos

**Recurso:** primeros capítulos de "The Data Warehouse Toolkit" (Kimball), no el libro completo.

### 📦 Proyecto 3 — Pipeline ETL automatizado
```
API/fuente → extracción programada → transformación → validaciones → PostgreSQL → modelo dimensional
```
Con logging y manejo de errores. **Este es el proyecto que se convierte en la base de datos de todo lo que viene después.**

## Mes 6 — Power BI + data storytelling

- Data modeling y relaciones (conecta directo con el mes 5)
- DAX: medidas, columnas calculadas, contexto de filtro, funciones de inteligencia de tiempo
- Diseño de dashboards: jerarquía visual, densidad de información, accesibilidad
- Storytelling: estructura narrativa de un hallazgo

**Recursos:** Microsoft Learn (ruta oficial gratuita) + "Storytelling with Data" (Cole Nussbaumer Knaflic).

### 📦 Proyecto 4 — Business Intelligence Dashboard
```
PostgreSQL (del proyecto 3) → Power Query → data model → DAX → dashboard → insights
```
Regla: debes poder decir *"este dashboard demuestra X, porque los datos muestran Y, por lo que recomiendo Z"*. Si no puedes, el dashboard no está terminado.

## Mes 7 — Estadística inferencial y experimentación

- Muestreo, sesgo de selección, tamaño de muestra
- Estimación e intervalos de confianza (y su interpretación correcta)
- Pruebas de hipótesis: t-test, chi-cuadrado, ANOVA básico
- p-valor: qué significa realmente y qué no
- Potencia estadística
- Correlación, causalidad y variables confusoras
- Regresión lineal como herramienta **explicativa**
- A/B testing: diseño, métricas primarias y secundarias, análisis

**Recursos:** Udacity "A/B Testing" (gratis) + StatQuest (YouTube) para intuición.

**🔢 Track matemático:** sube a 2h/semana.

### 📦 Proyecto 5 — A/B Testing
Diseño completo control vs. tratamiento, cálculo de tamaño de muestra, análisis de significancia y — lo más importante — discusión de limitaciones y qué decisión de negocio se toma con ese resultado.

## Mes 8 — Consolidación del portafolio de análisis

Sin materia nueva. Refactorizas y profesionalizas los proyectos 1-5: READMEs completos, código limpio, visualizaciones publicables, documentos de recomendaciones.

**🧠 CHECKPOINT 1**
¿Disfrutas el análisis de negocio: SQL, visualización, encontrar el porqué detrás de un número? Si sí, tienes una especialización posible. Si no, sigue — pero anótalo. La respuesta importa en el mes 15.

*(Nota: si además te gustó especialmente el mes 5, existe un rol llamado **Analytics Engineer** que es esencialmente la Fase 1 + los meses 17-18 de este plan, con muy buena demanda y la mitad del camino recorrido.)*

---

# FASE 2 — DATA SCIENCE
### Meses 9-15

## Mes 9 — Python para Data Science + probabilidad para ML

**Python:** scikit-learn (API general: fit/transform/predict), pipelines de sklearn, código estructurado en módulos (empiezas a salir del notebook).

**Probabilidad y estadística para ML:**
- Teorema de Bayes y su aplicación práctica
- Variables aleatorias, esperanza, varianza, covarianza
- Distribuciones (normal, binomial, Poisson, exponencial) y cuándo aparece cada una
- Estimación por máxima verosimilitud (conceptual)
- Regresión múltiple: supuestos, multicolinealidad, interpretación de coeficientes

**🔢 Track matemático:** sube a 2-3h/semana.

## Mes 10 — Machine Learning I

**Curso:** Andrew Ng — Machine Learning Specialization (DeepLearning.AI)

- Regresión lineal desde la perspectiva de optimización
- Función de costo, gradient descent, learning rate
- Regresión logística y clasificación
- Regularización L1/L2
- Árboles de decisión, Random Forest
- Gradient Boosting: XGBoost, LightGBM (los que realmente se usan con datos tabulares)

## Mes 11 — Machine Learning II

- SVM, KNN
- No supervisado: K-Means, DBSCAN, clustering jerárquico
- Reducción de dimensionalidad: PCA, t-SNE/UMAP
- Detección de anomalías
- Métodos de ensamble: bagging, boosting, stacking

**Pregunta guía del mes:** *¿por qué este modelo y no aquel?* Al terminar debes poder justificar una elección de modelo ante alguien que te cuestione.

## Mes 12 — Evaluación de modelos y feature engineering

El mes más importante de la fase. Un modelo mal evaluado es peor que no tener modelo.

- Train/validation/test; cross-validation; validación temporal para series
- Overfitting, underfitting, trade-off sesgo-varianza
- Matriz de confusión; precision, recall, F1, ROC-AUC, PR-AUC, log loss — y en qué situación cada métrica engaña
- **Data leakage** — la causa número uno de modelos que brillan en el notebook y fracasan en producción
- Clases desbalanceadas: class weights, SMOTE, ajuste de umbral
- Feature engineering: fechas, categóricas, encoding, interacciones, agregaciones
- Hyperparameter tuning: grid search, random search, Optuna
- Interpretabilidad: SHAP, permutation importance

### 📦 Proyecto 6 — ML Classification/Regression completo
```
Business Problem → Data → EDA → Feature Engineering → Modelos →
Evaluación → Selección → Impacto de negocio cuantificado
```
Usa los datos del proyecto 3. Debe incluir el costo relativo de un falso positivo vs. un falso negativo *en términos de negocio*.

## Mes 13 — Matemáticas para ML + implementación desde cero

*Aquí corrijo un orden que estaba invertido en otras versiones: primero consolidas la matemática, después implementas.*

**Semanas 1-2 — Matemática aplicada (ahora sí a fondo):**
- Álgebra: representación matricial de un modelo (Xw), operaciones vectorizadas
- Cálculo: derivadas parciales, gradiente ∇J, regla de la cadena
- Optimización: por qué gradient descent converge, learning rate, mínimos locales
- Conexión explícita: cómo la derivada de la función de costo se convierte en la regla de actualización

**Semanas 3-4 — Implementa solo con NumPy:**
- Regresión lineal con gradient descent
- Regresión logística
- Una red neuronal de 2 capas con backpropagation manual

```
X → Predicción → Loss → Gradiente → Update → Predicción
```

> Estos tres bastan. K-Means y PCA a mano son elegantes pero prescindibles si tu destino es AI Engineering.

**🔢 El track matemático se cierra aquí.** A partir del mes 14 las matemáticas se usan, no se estudian.

## Mes 14 — Deep Learning I (PyTorch)

- Tensores, autograd, uso de GPU
- Arquitectura de redes: capas, funciones de activación
- Loss functions y optimizadores (SGD, Adam)
- **Training loops escritos por ti**, no copiados
- Batching, DataLoaders
- Regularización: dropout, batch normalization, early stopping

## Mes 15 — Deep Learning II + embeddings

- MLP aplicado a datos tabulares y texto
- **Embeddings** — el concepto puente hacia toda la Fase 3
- CNN a nivel conceptual (3-4 días, no más: la visión por computadora no está en la ruta hacia LLMs)
- Transfer learning y fine-tuning (conceptual)
- Introducción a NLP clásico: tokenización, bag of words, TF-IDF

**Recursos:** fast.ai "Practical Deep Learning for Coders" o el curso oficial de PyTorch.

### 📦 Proyecto 7 — Deep Learning
Clasificación de texto (preferible a imágenes, por la continuidad hacia LLMs), con training loop propio y comparación honesta contra un baseline clásico. Si tu red no le gana a un XGBoost bien afinado, dilo — eso también es un hallazgo.

**🧠 CHECKPOINT 2**
¿Disfrutas la estadística, la experimentación, el feature engineering, entender *por qué* funciona un modelo? Si sí, Data Science podría ser tu destino final y no una escala. En este punto ya podrías postular a Data Scientist o Junior ML Engineer.

---

# FASE 3 — AI ENGINEERING
### Meses 16-25

El salto real: a partir de aquí eres tanto ingeniero de software como persona de datos.

## Mes 16 — Ingeniería de software en Python

- Python avanzado: decoradores, generadores, context managers, comprehensions
- **Type hints y `typing`** (no negociable en código de producción)
- OOP aplicado: composición sobre herencia, interfaces, inyección de dependencias
- Clean code: nombres, funciones pequeñas, manejo de errores, logging estructurado
- Testing serio: pytest, fixtures, mocking, cobertura, tests de integración
- Estructura de proyectos: packages, `pyproject.toml`, `uv` o Poetry
- Herramientas: ruff, black, mypy
- Git avanzado: branches, pull requests, rebase, resolución de conflictos, versionado semántico

**Recursos:** Corey Schafer (OOP, YouTube) + "Architecture Patterns with Python" (Percival & Gregory, gratis online).

### 📦 Proyecto 8 — De notebook a aplicación
Toma el proyecto 6 y conviértelo en una aplicación Python estructurada: módulos, configuración externa, tests, CLI, logging. Es menos vistoso que un modelo nuevo y vale mucho más en una entrevista.

## Mes 17 — APIs y FastAPI

- HTTP a fondo: métodos, códigos de estado, headers, idempotencia
- Diseño REST: recursos, versionado, paginación, manejo de errores
- **FastAPI:** routers, dependencias, middleware, tareas en background
- **Pydantic:** validación de esquemas, serialización
- Autenticación: API keys, JWT, OAuth básico
- Documentación automática con OpenAPI

### 📦 Proyecto 9 — ML Model API
```
Usuario → FastAPI → validación → modelo ML → predicción → JSON
```
Con tests, autenticación y documentación. Aquí ya estás haciendo ML Engineering.

## Mes 18 — Bases de datos en producción y asincronía

*Mes que otras versiones omiten y que después se echa de menos en RAG y agentes.*

- PostgreSQL avanzado: índices (B-tree, GIN), planes de ejecución, transacciones y niveles de aislamiento, connection pooling
- Migraciones con Alembic
- ORM: SQLAlchemy (y cuándo *no* usarlo)
- **Redis:** caché, rate limiting, colas simples
- **Programación asíncrona:** async/await, concurrencia vs. paralelismo, cuándo async ayuda y cuándo no
- Diseño de esquemas para cargas mixtas (analíticas + transaccionales)

## Mes 19 — Docker y despliegue local

- Imágenes, contenedores, Dockerfile, multi-stage builds
- Docker Compose: orquestar app + PostgreSQL + Redis
- Volúmenes, redes, variables de entorno, gestión de secretos
- Optimización de tamaño de imagen y tiempos de build

### 📦 Proyecto 10 — Stack conteneurizado
```
FastAPI + modelo ML + PostgreSQL + Redis, todo con un solo `docker compose up`
```

> Docker va aquí a propósito: aprendes contenedores sobre un sistema que ya entiendes por completo, antes de agregarle la complejidad de LLMs.

## Mes 20 — Transformers y fundamentos de LLMs

- Tokenización (BPE, subword) y por qué importa para costos
- De word2vec a embeddings contextuales
- **Mecanismo de atención y self-attention**
- Positional encoding
- Arquitectura encoder/decoder; BERT-like vs. GPT-like
- Pretraining, fine-tuning, RLHF (conceptual)
- Inferencia: context window, temperatura, sampling, top-p
- Hugging Face: transformers, datasets, modelos preentrenados

**Recursos:** "The Illustrated Transformer" (Jay Alammar) + curso oficial de Hugging Face + "Let's build GPT" de Andrej Karpathy.

> Objetivo: entendimiento arquitectónico. No vas a entrenar un transformer desde cero.

## Mes 21 — LLM Engineering

- APIs de LLM (Anthropic, OpenAI): mensajes, system prompts, parámetros
- Prompt engineering serio: estructura, ejemplos, chain-of-thought, prompt caching
- **Structured output:** JSON mode, validación con Pydantic
- **Function calling / tool use**
- Streaming y experiencia de usuario
- Gestión de contexto en conversaciones largas
- Economía del sistema: tokens, costo por request, latencia, elección de modelo por tarea
- Robustez: reintentos, rate limits, fallbacks, timeouts

### 📦 Proyecto 11 — AI Data Analyst
```
Usuario → LLM interpreta la pregunta → genera SQL → PostgreSQL →
datos → análisis → LLM explica → respuesta con evidencia
```
Ejemplo: *"¿Cuál fue nuestro producto más rentable en los últimos seis meses y por qué?"*

Este es el proyecto donde converge todo lo anterior: Data Analyst + Data Science + AI Engineering en un solo sistema.

## Mes 22 — RAG

- Modelos de embedding y cómo elegir uno
- Estrategias de chunking: fijo, con solapamiento, semántico, por estructura del documento
- Bases de datos vectoriales: **pgvector** (aprovecha tu PostgreSQL), Qdrant, ChromaDB
- Recuperación: similitud coseno, búsqueda híbrida (denso + BM25), filtros por metadata
- Reranking con cross-encoders
- **Evaluación de RAG:** medir recuperación y generación por separado; fidelidad, relevancia, groundedness

### 📦 Proyecto 12 — AI Knowledge Base
```
Documentos → extracción → chunking → embeddings → vector DB →
retriever → reranker → LLM → respuesta con citas
```
**Requisito de entrega:** un set de al menos 100 preguntas de evaluación con resultados medidos. "Funciona" no es un resultado; "acierta en el 87% del set de evaluación, y falla sistemáticamente en preguntas que requieren combinar dos documentos" sí lo es.

## Mes 23 — Agentes

- Arquitecturas: ReAct, planificación, reflexión, patrones de orquestación
- Tool calling avanzado, manejo de estado, memoria de corto y largo plazo
- **Model Context Protocol (MCP):** clientes, servidores, permisos — como protocolo, no como moda
- **LangGraph** — un solo framework, bien. Pero constrúyete primero un agente a mano para entender qué está abstrayendo el framework
- Agentic RAG
- Guardrails: límites de acción, validación de outputs, aprobación humana en pasos críticos
- Evaluación de agentes (el problema difícil: trayectorias, no solo respuestas)

### 📦 Proyecto 13 — AI Business Agent
```
LLM decide qué hacer → herramientas: SQL | RAG | modelo ML | APIs | Python
→ resultado → LLM sintetiza → respuesta
```

## Mes 24 — Evaluación, MLOps y LLMOps

Esta es la habilidad más escasa de todo el stack, y la que separa "sé hacer una demo" de "sé construir un sistema mantenible".

- **Evaluación sistemática:** construcción de datasets de evaluación, evals automatizados, LLM-as-judge y sus sesgos, detección de regresiones entre versiones
- CI/CD con GitHub Actions: tests, build, despliegue automático
- Logging estructurado y tracing distribuido
- Observabilidad de LLMs: LangSmith, Langfuse o equivalente
- Experiment tracking y versionado de modelos: MLflow
- Monitoreo en producción: drift de datos y de modelo, latencia p50/p95/p99, costo por request
- Optimización: caching semántico, batching, routing entre modelos según dificultad de la tarea

## Mes 25 — Cloud (AWS)

Solo lo necesario para poner tu sistema en producción. No buscas ser Cloud Engineer.

- **IAM:** usuarios, roles, políticas, principio de mínimo privilegio
- **EC2 / ECS:** cómputo y contenedores gestionados
- **S3:** almacenamiento de objetos
- **RDS:** PostgreSQL gestionado
- **Lambda:** funciones serverless
- **CloudWatch:** logs, métricas, alarmas
- Secrets Manager, variables de entorno
- Nociones de costo y cómo no llevarte un susto

*Si tu empresa usa Azure o GCP, aprende ese. Los conceptos se transfieren casi en su totalidad.*

---

# FASE 4 — CAPSTONE
### Meses 26-28

Cero tecnologías nuevas. Tres meses construyendo, integrando, midiendo y documentando.

### 🏆 Proyecto 14 — AI Business Intelligence Platform

**Las capas:**

| Capa | Tecnología | Viene del mes |
|---|---|---|
| Datos | PostgreSQL + pipeline ETL | 5 |
| Analytics | SQL + Pandas | 4, 9 |
| BI | Power BI | 6 |
| Machine Learning | scikit-learn / PyTorch | 12, 14 |
| LLM | API de LLM | 21 |
| RAG | pgvector + retriever | 22 |
| Agentes | LangGraph | 23 |
| Backend | FastAPI | 17 |
| Datos en producción | PostgreSQL + Redis + async | 18 |
| Infraestructura | Docker | 19 |
| Cloud | AWS | 25 |
| Observabilidad | Evals + logging + métricas | 24 |

**Arquitectura:**
```
                          USUARIO
                             ↓
                    WEB / API INTERFACE
                             ↓
                          FASTAPI
                             ↓
                  ┌──────────┴──────────┐
                  ↓                     ↓
             AI AGENT               DATABASE
                  ↓                     ↓
        ┌─────────┼─────────┐      PostgreSQL
        ↓         ↓         ↓          ↓
       RAG       SQL       ML      Analytics
        ↓         ↓         ↓          ↓
   Documentos   Datos  Predicción   Métricas
        └─────────┼─────────┘
                  ↓
                 LLM
                  ↓
          Respuesta final
                  ↓
       Evaluación + Logs + Costos
                  ↓
            Docker / AWS
```

**Caso de uso demostrativo:** el usuario pregunta *"¿por qué cayeron nuestras ventas 15% este trimestre?"* y el sistema consulta la base, analiza tendencias, invoca el modelo predictivo si corresponde, busca contexto en documentación vía RAG, sintetiza una explicación con evidencia, muestra métricas, registra la ejecución y evalúa la calidad de su propia respuesta.

**Entregables de estos tres meses:**
1. El sistema funcionando y desplegado
2. Suite de evaluación con métricas reales (precisión, latencia, costo por consulta)
3. Documentación de arquitectura: qué decisiones tomaste y **por qué descartaste las alternativas**
4. README profesional con demo en video o GIF
5. Un artículo público (blog o LinkedIn) explicando un problema técnico difícil que resolviste
6. Refactor final del código antiguo aplicando lo aprendido en el mes 16

---

# EL PORTAFOLIO COMPLETO

### 🟢 Fundamentos
| # | Proyecto | Demuestra |
|---|---|---|
| 0 | Personal Finance Analyzer | Programación básica, Python vs. SQL |
| 1 | API → Python → PostgreSQL | Integración de sistemas |

### 🔵 Data Analyst
| # | Proyecto | Demuestra |
|---|---|---|
| 2 | Exploratory Data Analysis | Análisis y comunicación de hallazgos |
| 3 | Pipeline ETL + modelo dimensional | Ingeniería de datos |
| 4 | Business Intelligence Dashboard | BI y storytelling |
| 5 | A/B Testing | Rigor estadístico |

### 🟡 Data Science
| # | Proyecto | Demuestra |
|---|---|---|
| 6 | ML end-to-end con impacto de negocio | Data science aplicada |
| 7 | Deep Learning con training loop propio | Profundidad técnica |

### 🟣 AI Engineering
| # | Proyecto | Demuestra |
|---|---|---|
| 8 | Notebook → aplicación estructurada | Ingeniería de software |
| 9 | ML Model API | ML Engineering |
| 10 | Stack conteneurizado | Infraestructura |
| 11 | AI Data Analyst | Integración LLM + datos |
| 12 | AI Knowledge Base (con evals) | RAG y evaluación |
| 13 | AI Business Agent | Sistemas agénticos |
| 14 | AI BI Platform | El paquete completo |

**La clave:** los proyectos 3, 4, 6, 9, 11, 12, 13 y 14 son capas del mismo sistema. Eso demuestra algo que quince repositorios inconexos nunca podrán: que sabes hacer evolucionar un sistema en el tiempo, que es exactamente lo que ocurre en un trabajo real.

---

# NOTAS DE EJECUCIÓN

**Sobre el uso de IA para programar.** Ya usas Claude Code, y está bien. Pero aplica una regla estricta en los meses 1-3 y 16-18: escribe el código tú primero, usa la IA para revisar y explicar, no para generar. En esas etapas estás construyendo intuición estructural, y saltártela crea un techo que después cuesta mucho romper. En el resto del plan, úsala con libertad — saber trabajar con IA *es* parte del trabajo.

**Sobre los tiempos.** Los meses son unidades de contenido, no plazos. Si el mes 12 te toma seis semanas, está bien. Si el mes 6 te toma tres, mejor. La única regla dura: no avanzas de fase sin haber entregado sus proyectos.

**Sobre la duración.** 28 meses a 3h diarias son unas 2.300 horas. Es un compromiso serio y habrá meses malos. Planifica una semana de descanso cada tres meses y acepta que el plan sobrevivirá imperfectamente. Un plan cumplido al 80% durante dos años vale infinitamente más que uno perfecto abandonado en el mes 5.

**Sobre las herramientas del final.** Los meses 22-24 cubren el área que más rápido cambia. Cuando llegues ahí (dentro de casi dos años), verifica qué sigue vigente antes de comprometerte con un curso o framework específico. Los conceptos —recuperación, evaluación, orquestación, observabilidad— van a seguir; los nombres probablemente no.

**Sobre reevaluar.** Al terminar cada fase, pregúntate si el destino sigue siendo el mismo. Es perfectamente válido descubrir en el mes 15 que Data Science te gusta más que AI Engineering, o en el mes 8 que lo tuyo es Analytics Engineering. Este documento es un mapa, no un contrato.
