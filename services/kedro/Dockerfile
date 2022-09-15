# Imagen base
FROM python:3.8-slim
# Instala paquetes necesario para GIT y descarga de archivos
RUN apt update && apt install  curl git -y
# instala el servidor de vs code
RUN curl -fsSL https://code-server.dev/install.sh | sh
#Instala kedro
RUN pip --disable-pip-version-check --no-cache-dir install \
    kedro==0.17.3\
    kedro-mlflow \
    && rm -rf /tmp/pip-tmp
#Agrega el usuario LCiD
RUN useradd -ms /bin/bash  LCiD
USER LCiD
ENV PATH "/home/LCiD/.local/bin:$PATH"
# Se posiciona en la carpeta de trabajo
WORKDIR /home/LCiD
# Copia las configuraciones y lanza el script entripoint al arrancar
COPY project-config.yml /tmp/
COPY entrypoint.sh /
ENTRYPOINT [ "/bin/bash", "/entrypoint.sh" ] 

EXPOSE 8080