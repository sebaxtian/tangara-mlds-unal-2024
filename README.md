# tangara-mlds-unal-2024

Tángara: Proyecto Aplicado del Diplomado en Machine Learning and Data Science de la Universidad Nacional de Colombia - 2024

![Diplomado Modular](modulos.png)

Se comparte el contenido relacionado con las actividades de Tareas, Quizzes y Proyecto Final. Este contenido forma parte del trabajo desarrollado por **[Sebastian Rios Sabogal](https://about.me/sebaxtian)** como resultado de la aplicación de los conceptos y el conocimiento adquiridos durante el transcurso del diplomado, y solo tiene alcance en el contexto educativo para el cual fue creado. Es de carácter educativo, con atribución al autor, y se permiten obras derivadas.

Tódo el contenido del repositorio se comparte bajo el uso de Licencia **[GLP-3.0](./LICENSE)** y Creative Commons **[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

Consulte más información sobre el Diplomado Modular en Machine Learning y Ciencia de Datos de la Universidad Nacional - 2024: **[Brochure MLDS UNAL - 2024](brochure-diplomado-mlds-unal-2024.pdf)**

## Requerimientos

* Sistema Linux Debian/Ubuntu
* Python 3.8+
* Poetry 1.8+
    - [Install Poetry](https://python-poetry.org/docs/#installation)

## ¿Cómo usar?

Por favor, léa y ejecute cada uno de los siguientes pasos:

### Paso 1

Agregar Poetry al PATH:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

También agregar Poetry al archivo .bashrc:

```bash
nano ~/.bashrc
```

Instalar Poetry usando el script:

```bash
sh install-poetry.sh
```

### Paso 2

Comando que le indica a Poetry cuál versión de Python usar en el proyecto:

```bash
poetry env use 3.12
```

### Paso 3

Activar el ambiente virtual:

```bash
poetry shell
```

### Paso 4

Instalar dependencias:

```bash
poetry install --no-root
```

### Opcional

Mostrar información del ambiente:

```bash
poetry env info
```

Agregar nuevos paquetes requeridos al archivo pyproject.toml e instalarlos:

```bash
poetry add jupyter
```

Desactivar el ambiente virtual y salir:

```bash
exit
```

Para desactivar el ambiente virtual sin salir del shell use el comando deactivate:

```bash
deactivate
```

## Código Fuente

Consultar los **Paquetes** correspondientes en el directorio [./src](./src/README.md)

---

***Eso es todo por ahora ...***

---



#### Licencia

[GLP-3.0](./LICENSE)

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)

#### Acerca de

[Sebastian Rios Sabogal](https://about.me/sebaxtian)
