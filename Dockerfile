# Utiliza la imagen base de Ubuntu
FROM ubuntu:latest

# Actualiza el sistema y instala Python
RUN apt-get update && apt-get install -y python3

# Copia el código fuente de la calculadora al contenedor
COPY calculadora.py /app/calculadora.py

# Establece el directorio de trabajo
WORKDIR /app

# Ejecuta la calculadora en Python
CMD ["python3", "calculadora.py"]
