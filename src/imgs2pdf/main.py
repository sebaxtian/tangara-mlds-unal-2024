"""
Archivo: main.py

Descripción: Esta es una herramienta que permite crear archivos PDF apartir de imagenes capturadas del
             material publicado como Objeto Virtual de Aprendizaje (OVA), desde la plataforma virtual de aprendizaje Open edX
             de la Universidad Nacional de Colombia, durante el transcurso del Diplomado en Machine Learning and Data Science.

Autor: Sebastian Rios Sabogal <https://about.me/sebaxtian>
Fecha: 31 de agosto de 2024
Versión: 1.0

Requiere:
    Python 3.8+
    img2pdf

Licencia:
    GLP-3.0
"""

import os

import img2pdf

if __name__ == '__main__':
    # Directorio de datos de entrada que contiene archivos de images tipo .jpg o .png
    DIR_IMGS_INPUT = "imgs/"
    # Directorio de datos de salida donde se guarda archivo tipo .pdf
    DIR_OUTPUT = "output/"
    # Nombre del archivo PDF solicitado al usuario
    nombre_archivo = input("Ingrese el nombre del archivo: ")
    # Lista de imagenes contenidas en el directorio de datos de entrada
    imgs = []

    # Lista de archivo en el directorio input de tipo .jpg o .png
    for fname in os.listdir(DIR_IMGS_INPUT):
        if not fname.endswith(".jpg") and not fname.endswith(".png"):
            continue
        path = os.path.join(DIR_IMGS_INPUT, fname)
        if os.path.isdir(path):
            continue
        imgs.append(path)

    # Ordenar la lista de imagenes por fecha de modificacion
    imgs.sort(key=lambda x: os.path.getmtime(x))

    # Convertir las imagenes a un archivo PDF y guarda el archivo en el directorio output
    nombre_archivo = f"{DIR_OUTPUT}{nombre_archivo}.pdf"
    with open(nombre_archivo, "wb") as f:
        f.write(img2pdf.convert(imgs))

    # Informa al usuario
    print(f"Archivo {nombre_archivo} se ha escrito correctamente.")

    # Preguntar si se desea eliminar las imágenes
    eliminar_imgs = input("Desea eliminar las imagenes? Y/n: ").strip()

    if eliminar_imgs == 'Y':
        for img in imgs:
            os.remove(img)
        print("Imagenes eliminadas.")
    else:
        print("Imagenes conservadas.")

    print("Proceso Terminado ;)")
