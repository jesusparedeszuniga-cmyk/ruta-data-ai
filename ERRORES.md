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

<!-- ejemplo, borrar cuando tengas los tuyos

### [09-14] Mes 1 — GROUP BY vs. agregación implícita
**Qué creía:** que podía poner cualquier columna en el SELECT junto a un COUNT().
**Qué es en realidad:** toda columna del SELECT que no esté agregada debe estar en el GROUP BY;
lo contrario es ambigüedad, y que MySQL lo permita no significa que sea correcto.
**Dónde apareció:** revisión del Proyecto 0.
**Estado:** ◐ abierto

-->

---

## Resueltos

---

## Patrones recurrentes

> Revisar al cierre de cada fase. Si tres errores distintos apuntan al mismo hueco de fondo, ese hueco necesita un bloque de estudio propio, no otro parche.

-
### [09-02] Mes 1 — El prompt muestra el nombre de la carpeta, no la ruta
**Qué creía:** que si el prompt dice `ruta-data-ai` estoy en mi repo.
**Qué es en realidad:** el prompt solo muestra el último tramo de la ruta.
Dos carpetas distintas con el mismo nombre se ven idénticas. La ubicación
real solo la da `pwd`, y el `fatal: not a git repository` es la señal de
que estoy fuera del repo, no de que Git esté roto.
**Dónde apareció:** moviendo los archivos de tracking al repo, día 1.
**Estado:** ◐ abierto