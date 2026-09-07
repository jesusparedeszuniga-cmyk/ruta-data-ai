## 2026-09-06 — Sistema automatizado de cálculo y verificación de SOL (HubSpot ↔ Filevine)

**Antes:** el abogado a cargo revisaba cada caso nuevo y calculaba el statute of
limitations a mano — buscar el incident date, decidir qué regla aplica, calcular
la fecha, ingresarla en Filevine. ~5-10 min por caso. Sin verificación cruzada:
un cálculo mal hecho no lo detectaba nadie hasta que era tarde.

**Después:** workflows en HubSpot calculan el SOL desde el incident date, con
ramas para minoría de edad, government claim y government claim rejected. Zapier
sincroniza en ambas direcciones: envía el SOL a Filevine para verificación de los
abogados, y trae de Filevine el government claim status y el rejection date que
disparan los cálculos derivados. Corre todos los días. Requirió construir las
propiedades y workflows en HubSpot y los campos correspondientes en Filevine.

**Impacto:**
- Volumen: ~129 casos/mes (258 en 60 días), ~1.550/año.
- Tiempo liberado: ~194 horas-persona/año — tiempo de abogado, no de staff
  administrativo.
- Cobertura de las ramas de mayor riesgo: 10% de los casos (~155/año) siguen
  reglas no obvias — minoría de edad, government claim, rechazo — que son
  precisamente donde el cálculo manual falla.
- Riesgo contenido: un SOL vencido extingue el caso. Settlements observados:
  promedio USD 30-50K, con cuatro casos documentados entre USD 1,25M y 1,7M.
  El cálculo manual no distingue un caso de USD 30K de uno de USD 1,3M — ambos
  entran igual. Un solo plazo perdido evitado supera cualquier costo del sistema.

**Quién lo usa:** Josh Z. e Isahak K. verifican los SOL en Filevine. La salida
alimenta una segunda automatización de recordatorios y generación de tareas en
Filevine, pedida por Alejandra V.

**Habilidad del plan aplicada:** previo al plan — integración entre sistemas,
lógica condicional de negocio, sincronización bidireccional. A rehacer con código
en el Proyecto 1 (mes 2) y el Proyecto 3 (mes 5).

**Evidencia:** [pendiente — captura de los workflows y del zap]

## 2026-09-06 — Sincronización continua de Policy Limits (Filevine → HubSpot)

**Antes:** importaciones manuales esporádicas, hechas por Valentina (Senior Technical
Support Analyst). En el año previo a mi ingreso se hicieron dos o tres en total, sin
periodicidad. Los policy limits en HubSpot estaban permanentemente desactualizados,
lo que hacía inviable cruzarlos con lead source para estimar valor de caso.

**Después:** dos zaps. Uno crea el registro de policy limits en HubSpot cada vez que
se añade un auto insurance a un project en Filevine. Otro lo actualiza ante cualquier
cambio de campo en el origen. Mes pasado: 180 creaciones y 620 actualizaciones — 800
sincronizaciones que antes no ocurrían.

**Impacto:** habilita una pregunta de asignación de presupuesto que antes no se podía
responder con datos fiables: qué lead sources traen los casos de póliza más alta.
Un CPL alto se justifica si esa fuente trae límites de póliza mayores; sin datos
actualizados, esa decisión se toma a ciegas.

**Quién lo usa:** nadie todavía. Los datos fluyen, pero el reporte de cruce con lead
source no se ha construido, y los campos de origen en Filevine no se completan de
forma consistente. Adopción y calidad de datos pendientes, no la sincronización.

**Habilidad del plan aplicada:** previo al plan. Pendiente de aplicar: calidad de
datos y validaciones (mes 5), y la prueba de terminado del mes 6 — que alguien con
poder de decisión lo abra por su cuenta.

**Siguiente paso:** construir el reporte de policy limit por lead source y llevárselo
a quien decide presupuesto de marketing. Es el paso que convierte esto en impacto.

**Evidencia:** [pendiente — captura de ambos zaps y del conteo de runs]