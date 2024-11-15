# Usamos la imagen oficial de Metabase
FROM metabase/metabase:v0.39.4

# Instalamos Java 8 (ya que la imagen base de Metabase podría no incluir Java 8)
RUN apt-get update && apt-get install -y openjdk-8-jre-headless

# Exponemos el puerto que Metabase usará
EXPOSE 3000

# Comando para iniciar Metabase con Java 8
CMD ["java", "-jar", "/app/metabase.jar", "--port", "$PORT"]

