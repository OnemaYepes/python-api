# Usa una imagen base oficial de Python, de tamaño slim
FROM python:3.7.11-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR  /python-api

# Copia el archivo de requisitos al contenedor ya que contiene las dependencias necesarias
COPY requirements.txt requirements.txt

# Instala las dependencias del archivo de requisitos para que funcione la app
RUN pip install -r requirements.txt

# Copia el contenido del directorio actual al contenedor
COPY . .

# Linea de comando para ejecutar la aplicación Flask
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]