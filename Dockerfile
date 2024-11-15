# Usamos la imagen oficial de Metabase
FROM metabase/metabase:v0.39.4

# Exponemos el puerto que Metabase usará
EXPOSE 3000

# Comando para iniciar Metabase con Java 8
CMD ["java", "-jar", "/app/metabase.jar", "--port", "$PORT"]

