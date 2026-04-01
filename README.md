# 3Branas

Landing page estatica del proyecto 3Branas.

El sitio esta pensado para publicarse con GitHub Pages y asociarse al dominio `www.3branas.com`.

## Estructura

- `index.html`: pagina principal
- `preview.webp`: imagen de referencia o previsualizacion

## Publicacion

Este repositorio puede desplegarse directamente con GitHub Pages:

1. Ir a `Settings > Pages`
2. En `Build and deployment`, elegir `Deploy from a branch`
3. Seleccionar la rama `main`
4. Guardar

Despues, en la misma configuracion, se puede definir el dominio personalizado:

- `www.3branas.com`

## DNS

Para conectar el subdominio `www`, crea un registro `CNAME` en tu proveedor DNS apuntando a:

- `gmazu.github.io`

Una vez propagado el DNS, GitHub Pages podra servir el sitio con HTTPS.

## Desarrollo

No hay proceso de build. El sitio usa archivos estaticos y puede abrirse localmente en navegador cargando `index.html`.

Para probar cambios antes de publicarlos:

```bash
./preview_local.sh
```

Luego abre:

- `http://localhost:8000`
