# DevOps Learning Web

Proyecto pequeño pensado para practicar GitHub Actions, Docker y conceptos básicos de CI/CD.

## Estructura

- `src/index.html` → página web
- `src/style.css` → estilos
- `Dockerfile` → imagen Docker de Nginx
- `docker-compose.yml` → levantar el sitio localmente
- `.github/workflows/ci.yml` → workflow inicial
- `.github/workflows/docker.yml` → workflow para construir la imagen
- `scripts/check.sh` → validaciones simples

## Objetivo

No intentes entender todo de una vez. La idea es modificar los workflows progresivamente.

### Etapa 1 — GitHub Actions

Practicar:

1. `name`
2. `on`
3. `jobs`
4. `runs-on`
5. `steps`
6. `uses`
7. `run`
8. `needs`
9. condiciones con `if`
10. artifacts

### Etapa 2 — Docker

Practicar:

1. construir una imagen
2. ejecutar un container
3. mapear puertos
4. modificar el HTML
5. reconstruir la imagen

Comando:

```bash
docker build -t devops-learning-web .
docker run --rm -p 8080:80 devops-learning-web
```

Abrir: http://localhost:8080

Con Compose:

```bash
docker compose up --build
```

## Ejercicios sugeridos

### Ejercicio 1
Hacé que el workflow se ejecute solamente cuando haya un `push` a `main`.

### Ejercicio 2
Agregá un step que compruebe que existen `src/index.html` y `src/style.css`.

### Ejercicio 3
Agregá una validación que falle si el HTML no contiene `<html`.

### Ejercicio 4
Agregá un job llamado `docker-build` que dependa de `test`.

### Ejercicio 5
Construí la imagen Docker desde GitHub Actions.

### Ejercicio 6
Publicá la imagen en GitHub Container Registry (GHCR).

### Ejercicio 7
Hacé que el workflow no construya la imagen si las validaciones fallan.

### Ejercicio 8
Más adelante: agregá deploy a un servidor.

> Consejo: primero hacé que cada cosa funcione localmente y después automatizala con GitHub Actions.
