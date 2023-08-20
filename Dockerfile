# Usa una imagen base de Python
FROM python:3.8-slim

# Instala Flask
RUN pip install Flask

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el código fuente de la aplicación desde la carpeta 'SRC'
COPY main.py /app/

# Expone el puerto en el que la aplicación Flask estará escuchando
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "main.py"]