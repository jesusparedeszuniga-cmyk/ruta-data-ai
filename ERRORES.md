# ERRORES

> Archivo de conocimiento del Project. Se actualiza el mismo domingo que `ESTADO.md` y `SEGUIMIENTO.md`.
> Solo **errores conceptuales** — los que el tutor marca con `→ ERRORES.md` en el paso 2 de la rúbrica.
> Un bug de sintaxis no va aquí. Un malentendido de fondo, sí.

**Cómo se usa:** el tutor mezcla estos temas en los quiz mensuales y en los ejercicios de refuerzo, combinando errores de los últimos tres meses. Un error se marca ✔ resuelto solo cuando lo explicaste bien en un quiz posterior, no cuando lo entendiste el día que te lo corrigieron.

---

## Formato

```markdown
### [MM-DD] Mes N — Título del malentendido
**Qué creía:** …
**Qué es en realidad:** …
**Dónde apareció:** proyecto / ejercicio / revisión
**Estado:** ◐ abierto | ✔ resuelto (fecha del quiz donde lo demostré)
```

---

## Abiertos

### [09-02] Mes 1 — El espacio es un separador de argumentos en el shell
**Qué creía:** que un nombre de carpeta se escribe tal cual se ve en el Finder.
**Qué es en realidad:** el shell parte la línea por los espacios y trata cada
fragmento como un argumento distinto. Un nombre con espacios hay que escaparlo
o entrecomillarlo, o el comando recibe argumentos que no existen.
**Dónde apareció:** navegando al repo el día 1.
**Estado:** ◐ abierto

### [09-02] Mes 1 — El prompt muestra el nombre de la carpeta, no la ruta
**Qué creía:** que si el prompt dice `ruta-data-ai` estoy en mi repo.
**Qué es en realidad:** el prompt solo muestra el último tramo de la ruta.
Dos carpetas distintas con el mismo nombre se ven idénticas. La ubicación
real solo la da `pwd`, y el `fatal: not a git repository` es la señal de
que estoy fuera del repo, no de que Git esté roto.
**Dónde apareció:** moviendo los archivos de tracking al repo, día 1.
**Estado:** ◐ abierto

### [09-03] Mes 1 — Los métodos de string devuelven, no modifican
**Qué creía:** que llamar a `.replace()` sobre una variable cambiaba esa variable.
**Qué es en realidad:** las cadenas en Python son inmutables. Los métodos de
string devuelven una cadena nueva y dejan la original intacta. Si no asigno el
resultado o no lo uso ahí mismo, el cálculo se descarta en silencio: no hay error,
simplemente no pasa nada.
**Dónde apareció:** Making Faces, pset 0.
**Estado:** ◐ abierto

### [09-03] Mes 1 — Asignar dentro de una función no la hace devolver
**Qué creía:** que si guardaba el resultado en una variable dentro de la función,
quien la llamó recibiría ese valor.
**Qué es en realidad:** las variables locales mueren al terminar la función. La
única forma de entregar un valor a quien llamó es `return`. Sin él, la función
devuelve `None` aunque haya calculado correctamente.
**Dónde apareció:** Tip Calculator, pset 0. Segunda vez en el mismo pset.
**Estado:** ◐ abierto

### [09-06] Mes 1 — División entera en SQL trunca el resultado
**Qué creía:** que dividir dos columnas y multiplicar por 100 me daba el porcentaje.
**Qué es en realidad:** si ambos operandos son enteros, la división descarta la
parte decimal antes de seguir operando. Hay que convertir a decimal antes de
dividir, o reordenar la operación. Multiplicar después no recupera lo perdido.
**Dónde apareció:** Mode Basic SQL, ejercicio de porcentajes por región.
**Estado:** ◐ abierto — *ejercicio de porcentajes declarado resuelto y verificado en
dos casos (`google`, `facebook`) el 09-13, sin evidencia vista por el tutor. Resolver
el ejercicio el día de la corrección no califica: se marca ✔ en el quiz de cierre de mes.*

### [09-06] Mes 1 — Nombrar variables como funciones incorporadas las oculta
**Qué creía:** que `bool`, `list`, `str`, `type` eran palabras libres para usar como
nombres de variable.
**Qué es en realidad:** son funciones incorporadas de Python. Asignarles un valor
las sobrescribe dentro de ese ámbito y dejan de estar disponibles. Python no avisa;
el error aparece después, cuando intento usarlas como función.
**Dónde apareció:** ejercicio de tipos, mes 1.
**Estado:** ◐ abierto

### [09-06] Mes 1 — Los paréntesis significan llamar, y solo van sobre funciones
**Qué creía:** que los paréntesis eran parte del nombre o decoración de la sintaxis.
**Qué es en realidad:** `nombre(...)` ejecuta una función. Sobre una variable da
TypeError; sobre una función sin ellos obtengo la función misma, no su resultado.
Las llaves de un f-string marcan dónde va un valor, no llaman a nada.
**Dónde apareció:** discount.py, mes 1. **Reapareció el 09-13 en Deep Thought
("Great Question"), pset 1** — segunda aparición, no resuelto.
**Estado:** ◐ abierto

### [09-13] Mes 1 — Reasignar sobre un método que muta y devuelve `None`
**Qué creía:** que `lista = lista.append(x)` era la forma correcta de añadir un
elemento y quedarme con la lista actualizada.
**Qué es en realidad:** `.append()` modifica la lista en el sitio y devuelve `None`.
Al asignar ese `None` sobre el nombre, destruyo la lista que acababa de actualizar.
Es el espejo del patrón ya abierto: allí el error es **no recoger** lo que sí se
devolvió; aquí es **recoger** lo que nunca se devolvió. La pregunta que separa los
dos casos es una sola: ¿este método devuelve un valor nuevo o modifica el objeto?
Lo mismo aplica a `.sort()`, `.reverse()` y `.extend()`.
**Dónde apareció:** ejercicios de listas, semana 2. Relacionado: reiniciar
`total = 0` dentro del loop en vez de antes — el acumulador se borra en cada vuelta
y el resultado final es solo la última iteración.
**Estado:** ◐ abierto

### [09-13] Mes 1 — Sintaxis válida, dato o columna equivocados
**Qué creía:** que si el código corre sin error y devuelve un resultado con forma
razonable, está bien.
**Qué es en realidad:** el intérprete y el motor SQL validan la forma, no el
significado. Un programa puede estar perfectamente escrito y responder una pregunta
distinta de la del enunciado, y no hay ninguna señal de error: la única verificación
posible es contrastar contra un caso cuyo resultado conozco de antemano.
**Dónde apareció:** dos veces el mismo día — Plates (`s[i].isalpha()` bien escrito
pero con la lógica invertida) y SQL (`risk_level` calculado sobre `settlement_amount`
en vez de `policy_limit`).
**Estado:** ◐ abierto

### [09-13] Mes 1 — El orden de un `print` respecto a la condición de corte no es neutro
**Qué creía:** que mientras el resultado final fuera correcto, dónde colocara la
salida dentro del loop daba igual.
**Qué es en realidad:** el `print` no reporta el estado final, reporta el estado en
el instante en que se ejecuta. Imprimir antes de evaluar la condición de corte
muestra un estado que el programa nunca debió exponer. Lo que el usuario ve es
parte de la salida, no un adorno del cálculo.
**Dónde apareció:** coke.py, pset 2 — `Amount Due` negativo antes de cortar.
**Estado:** ◐ abierto

## Resueltos

*(vacío — ninguno ha pasado todavía por un quiz posterior)*

---

## Patrones recurrentes

- **Calcular no es entregar.** Cinco entradas son variantes de lo mismo: métodos de
  string, asignar vs. devolver, paréntesis de llamada, builtins ocultos, y ahora
  `.append()` por el lado contrario. Una expresión que produce un valor lo pierde si
  nadie lo recoge; y un método que no produce valor destruye lo que tenía si lo
  recojo igual. Python no avisa en ninguno de los dos casos. **Eje central del quiz
  de cierre del mes 1.**

- **El programa corre ≠ el programa responde la pregunta.** Dos entradas nuevas —
  dato equivocado, y orden del `print` — comparten raíz: verifico contra el
  intérprete, no contra el enunciado. Contramedida: antes de dar por terminado un
  ejercicio, escribir a mano el resultado esperado de un caso y compararlo. Es el
  germen de lo que en el mes 5 se llama test de validación de entrada.
