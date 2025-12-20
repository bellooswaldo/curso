# Guía de prácticas con Git y GitHub

Esta guía resume el flujo de trabajo que usaremos en clase para practicar **Git** (control de versiones) y **GitHub** (plataforma remota y colaborativa).  

La idea es que puedas seguir estos pasos cada vez que hagamos una nueva actividad.

---

## 1. Preparación inicial

### 1.1. Verificar instalación de Git

git --version

- Si ves un número de versión, Git está instalado correctamente.  
- Si no, instala Git desde: https://git-scm.com/downloads

### 1.2. Configurar tu usuario (solo la primera vez)

git config --global user.name "Tu Nombre"
git config --global user.email "tu-correo@example.com"


Puedes revisar tu configuración con:
git config --list


---

## 2. Flujo básico con un repositorio nuevo (local → remoto)

Usaremos este flujo cuando creemos un proyecto desde cero en tu máquina y luego lo subamos a GitHub.

### 2.1. Crear carpeta y repositorio local

mkdir mi-proyecto
cd mi-proyecto
git init


### 2.2. Crear un archivo y ver el estado
echo "Mi primer proyecto con Git" > README.md
git status


### 2.3. Añadir cambios al área de preparación (staging)
git add README.md

o para añadir todo:
git add .


### 2.4. Crear un commit

git commit -m "feat: agregar README inicial"


Revisa el historial:

git log --oneline


### 2.5. Crear repositorio en GitHub y conectarlo

1. En GitHub, crea un nuevo repositorio (sin README si ya lo creaste localmente).  
2. Copia la URL (HTTPS o SSH).  

En la terminal:

git remote add origin https://github.com/TU_USUARIO/mi-proyecto.git
git branch -M main
git push -u origin main


---

## 3. Flujo básico con repositorio existente (remoto → local)

Usaremos este flujo cuando el repositorio ya existe en GitHub y quieres trabajar sobre él.

### 3.1. Clonar el repositorio

git clone https://github.com/TU_USUARIO/mi-proyecto.git
cd mi-proyecto


### 3.2. Actualizar antes de trabajar

Siempre antes de empezar:

git pull


---

## 4. Trabajar con ramas (branches)

Las ramas permiten desarrollar nuevas funcionalidades sin romper la rama principal (`main`).

### 4.1. Crear y cambiar a una nueva rama

git switch -c feature/nueva-funcionalidad

o
git checkout -b feature/nueva-funcionalidad


Ver ramas:

git branch


### 4.2. Flujo dentro de una rama

1. Editas archivos.  
2. Revisas el estado:

git status


3. Añades cambios:

git add .


4. Creas commit(s):

git commit -m "feat: descripción breve de la mejora"


5. Empujas la rama al remoto:

git push -u origin feature/nueva-funcionalidad


---

## 5. Pull Requests (PR) en GitHub

El Pull Request es la forma estándar de proponer cambios para que se revisen e integren.

### 5.1. Flujo para crear un Pull Request

1. Desde tu rama (`feature/...`), asegúrate de que todos los cambios estén commiteados y pusheados.  
2. Ve a GitHub, al repositorio.  
3. Verás el botón **“Compare & pull request”** o **“New pull request”**.  
4. Revisa que la base sea `main` (u otra rama indicada) y la rama de comparación sea tu `feature/...`.  
5. Escribe:
- Título claro (ej: `feat: agregar sección de contactos`).
- Descripción corta de lo que hiciste.  
6. Crea el Pull Request.

### 5.2. Revisar y fusionar un Pull Request (para quienes revisan)

1. En la pestaña **Pull requests**, abre el PR.  
2. Revisa el código en la sección **Files changed**.  
3. Opcional: deja comentarios en líneas específicas.  
4. Si está todo bien, haz clic en **Merge pull request** y confirma.  

---

## 6. Mantener tu rama actualizada (sync con main)

A veces `main` avanza mientras trabajas en tu rama. Debes actualizarte antes de fusionar.

### 6.1. Traer cambios de `main` a tu rama
Estar en tu rama de trabajo
git switch feature/nueva-funcionalidad

Traer la rama main actualizada
git fetch origin
git merge origin/main


Si hay conflictos, Git te lo indicará. Debes:

1. Editar los archivos marcados (busca `<<<<<<<`, `=======`, `>>>>>>>`).  
2. Resolver el conflicto, guardar.  
3. Añadir y commitear:

git add .
git commit -m "fix: resolver conflictos con main"


---

## 7. Flujo típico de práctica en clase

En las actividades de la clase seguiremos más o menos este patrón:

1. **Obtener el código base**  
- O bien clonar un repo de la clase.  
- O bien crear un repo nuevo en tu máquina y subirlo a GitHub.

2. **Crear una rama con tu nombre o funcionalidad**  
git switch -c feature/tu-nombre


3. **Hacer un cambio sencillo**  
- Agregar tu nombre a `participantes.md`.  
- Crear un archivo `tu-nombre.md`.  
- Modificar texto del `README.md`.

4. **Commit + push**  
git add .
git commit -m "feat: agregar mi nombre a la lista"
git push -u origin feature/tu-nombre


5. **Crear un Pull Request en GitHub**  
- Título: `feat: agregar <tu-nombre> a participantes`.  
- Descripción: explica brevemente qué cambiaste.

6. **Revisión y merge**  
- El profesor o compañeros revisan el PR.  
- Si todo está bien, se hace merge a `main`.

---

## 8. Comandos de referencia rápida

### 8.1. Configuración y ayuda
git config --global user.name "Tu Nombre"
git config --global user.email "tu-correo@example.com"
git help


### 8.2. Flujo básico

git status # Ver estado
git add . # Añadir todo al staging
git commit -m "mensaje" # Crear commit
git push # Enviar cambios al remoto
git pull # Traer cambios del remoto


### 8.3. Ramas

git branch # Ver ramas
git switch nombre-rama # Cambiar de rama (Git moderno)
git checkout nombre-rama # Cambiar de rama (comando clásico)
git switch -c nueva-rama # Crear y cambiar a una rama nueva


---

## 9. Recursos recomendados

- Guía sencilla de Git: https://rogerdudler.github.io/git-guide/index.es.html  
- Curso desde cero de Git y GitHub (freeCodeCamp en español):  
  https://www.freecodecamp.org/espanol/news/aprende-git-y-github-curso-desde-cero/  
- Lista de comandos básicos de Git:  
  - https://www.hostinger.com/es/tutoriales/comandos-de-git  
  - https://www.swhosting.com/es/blog/comandos-basicos-de-git-guia-para-principiantes

---







