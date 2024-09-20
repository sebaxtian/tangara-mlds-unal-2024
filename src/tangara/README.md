# tangara

Este paquete contiene una variedad de Notebooks y Scripts que podemos usar como **Herramienta ETL** de los datos correspondientes a los sensores de Tángara

## Requerimientos

Se debe asegurar de crear el archivo **.env** a partir de una copia del archivo de muestra **example.env** y modificar las variables de entorno correspondientes. Si no conoce qué valores asignar a cada variable de entorno, por favor contacte al creador del repositorio, [Sebastian Rios Sabogal](https://about.me/sebaxtian). Si usted tiene la información de algún servidor InfluxDB diferente al de Tángara, puede usar sus propias credenciales en el archivo **.env**

### Variables de Entorno

````bash
# URL del servidor InfluxDB donde se encuentran los datos
URL_INFLUXDB_QUERY_ENDPOINT=http://INFLUXDB_SERVER:8086/query
# Nombre de la base de datos en InfluxDB
DB_NAME_INFLUXDB=DB_NAME_INFLUXDB
# Agrupa los datos consultados en InfluxDB cada 30 segundos, esta es la frecuencia minima con la que se registran los datos en la base de datos, puede hacer pruebas agrupando por ejemplo cada hora H
GROUP_BY_TIME=30s
# Año para el cual se ejecuta las consultas
YEAR=2023
# Rango de fecha de inicio para las consultas
START_ISO8601_DATETIME=2023-08-01T00:00:00-05:00
# Rango de fecha de fin para las consultas
END_ISO8601_DATETIME=2023-08-31T23:59:59-05:00
# Nombre del conjunto 1 de datos CSV que sera concatenado con 2 
TANGARA_DATASET_1=tangara_dataset_raw_2023-08-01_00-00-00_UTC-0500_2023-08-31_23-59-59_UTC-0500.csv
# Nombre del conjunto 2 de datos CSV que sera concatenado con 1
TANGARA_DATASET_2=tangara_dataset_raw_2024-08-01_00-00-00_UTC-0500_2024-08-31_23-59-59_UTC-0500.csv
````

**NOTA**: _Los Scripts deben ser ejecutados desde el directorio_ **./scripts**

## ¿Cómo usar?

Este paquete contiene una variedad de _Notebooks_ y **Scripts** que podemos usar de diferentes formas.

_**Como norma general**: no es necesario ejecutar manualmente los archivos tipo Notebook contenidos en el directorio ./notebooks; en su lugar, **ejecutamos el proceso ETL desde los archivos de Scripts** contenidos en el directorio ./scripts_. Puede consultar los archivos tipo Notebook como guía para entender los procesos, pero se recomienda no modificarlos, ya que estos Notebooks son desarrollados y mantenidos por el autor del repositorio [Sebastian Rios Sabogal](https://about.me/sebaxtian) y están listos para ser usados desde los Scripts.

Por favor, léa y ejecute cada uno de los siguientes pasos:

### Paso 1

Ejecutar el Script del ETL para un rango de fechas configurado previamente en el archivo **.env**

```bash
cd scripts
./x_time.sh
```

Al final del proceso ETL los datos se guardan en archivos tipo CSV en el directorio **./data**

### Paso 2 (Opcional)

Ejecute el Script de concatenación de conjuntos de datos a partir de un par de archivos tipo CSV configurados previamente en las variables correspondientes del archivo **.env**

```bash
cd scripts
./concat_tangara_datasets.sh
```

Al final del proceso de concatenación los datos se guardan en un único archivo tipo CSV en el directorio **./data**


## Reporte de Logs

Puede consultar el reporte de los logs generados tanto del proceso ETL como de la Concatenación en los archivos ubicados en el directorio **./logs**



---

#### Licencia

[GLP-3.0](./LICENSE)

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)

#### Acerca de

[Sebastian Rios Sabogal](https://about.me/sebaxtian)
