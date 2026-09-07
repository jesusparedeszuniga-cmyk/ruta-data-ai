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
**Estado:** ◐ abierto

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
**Dónde apareció:** discount.py, mes 1.
**Estado:** ◐ abierto

## Resueltos

---

## Patrones recurrentes

>- **Calcular no es entregar.** Cuatro entradas distintas (métodos de string, asignar
  vs. devolver, paréntesis de llamada, y en parte los builtins) son variantes de lo
  mismo: una expresión que produce un valor lo pierde si nadie lo recoge con `=` o
  con `return`. Python no avisa. Revisar en el quiz del cierre de mes 1.

-
