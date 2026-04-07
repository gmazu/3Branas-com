# Recuperación de Cambios para `3Branas-com`

Este archivo resume los cambios e ideas recuperadas de la conversación anterior para que el trabajo de `WWW` continúe en un chat separado, sin mezclarlo con `GRF2026`.

## 1. Dirección general del sitio

Se redefinió la landing con esta línea:

- Título principal:
  - `Universo Relacional de 2 3-Branas en Colisión.`
- Subtítulo:
  - `Una nueva interpretación del universo observado, descrita en una serie de papers independientes que todavía están en construcción.`

La intención del sitio ya no es una página “under construction” genérica, sino una puerta de entrada real al marco.

## 2. Estructura que se buscó para la landing

La página debía funcionar como hub visible hacia:

- `Colisión de 2 3-Branas`
- `MazzGAP`
- `HUB`
- textos para `ElevenLabs`
- y más adelante `Manim` + YouTube

## 3. Versión bilingüe

Se dejó planteado que la web tenga dos páginas separadas:

- `index.html` en español
- `index-en.html` en inglés

Con cambio visible por bandera:

- en español: `EN`
- en inglés: `ES`

La idea no era traducción automática, sino dos páginas reales.

## 4. Estética acordada

Se pidió una estética:

- fondo negro
- sensación holográfica / neón
- moderna pero sobria
- sin caer en UI recargada

## 5. Contador / panel simbólico

Se trabajó una idea de contador simbólico estilo retro-futurista.

### Lo que sí quedó claro conceptualmente

- GitHub Pages soporta JavaScript del lado cliente.
- El contador no debía venderse como física exacta, sino como juego simbólico.
- Se buscó un look tipo `Back to the Future`, pero integrado al estilo del sitio.

### Evolución conceptual del contador

Primero:
- contador simbólico de “13.8 mil millones de años”
- luego cuenta regresiva simbólica

Después se vio que con números enormes JavaScript perdía precisión visible en segundos, así que la mejor salida conceptual fue:

- dejar los años grandes fijos
- mover meses/días/horas/min/seg respecto de una fecha de referencia real

### Referencia usada en la conversación

- `2026-04-03 07:00:00 -03:00`

### Panel deseado

- naranja / neón vintage para el contador principal
- además surgió la idea de un segundo reloj verde estilo `Present Time`
- finalmente se decidió que, si se usa algo estilo `Back to the Future`, debe ser un panel aparte y no romper el contador original que te gustó

## 6. Estado del `WWW` dentro de `GRF2026`

En `GRF2026/PDF/1800/WWW` sí existe una copia de trabajo.

Pero también se conversó que quizá la fuente real ya está en:

- `/home/gmazuel/www/3Branas-com`

Conclusión provisional de esa conversación:

- no borrar todavía `WWW` de `GRF2026` hasta confirmar que `3Branas-com` es la fuente canónica
- porque `git_publish.sh` todavía tiene lógica para excluir/publicar `WWW/index.html` y `WWW/index-en.html`

## 7. Chat en la web

Quedó explícitamente como pendiente importante:

- agregar un chat en la web
- de forma que quien entre tenga la posibilidad de hablar contigo / con el sistema

### Idea de implementación por etapas

1. primero un `chat shell` visible en la UI
2. después conexión a backend / API
3. control de costos y comportamiento

## 8. Orden pendiente del repositorio / sitio

Se detectó que hace falta un criterio común para:

- nombres de versiones
- alias con versión al inicio para móvil
- organización de `PDF / TEX / TXT / IMG`
- y una forma estándar de recuperar la última versión vigente

## 9. Comandos útiles recuperados

Para encontrar la última versión local por nombre, sin GitHub:

```bash
find . -type f | sort -V | tail
```

Para una rama concreta:

```bash
find /ruta/al/proyecto -maxdepth 1 -type f | sort -V | tail -n 1
```

Esto trabaja sobre disco local, no sobre GitHub.

## 10. Recomendación de organización de chats

Se concluyó que es mejor separar:

- un chat para `WWW`
- otro chat para `GRF2026 / posters / papers / Zenodo`

Porque si no se mezclan ramas y se pierde trazabilidad.

## 11. Qué conviene hacer ahora en este chat nuevo de `WWW`

Orden sugerido:

1. confirmar si `/home/gmazuel/www/3Branas-com` será la fuente canónica
2. revisar qué archivos existen hoy
3. decidir si se migra o se recrea la landing desde cero
4. portar las ideas recuperadas:
   - hub principal
   - EN/ES
   - panel neón / contador simbólico
   - futura integración de chat

