# Utiliser une image de base R
FROM rocker/r-ver:4.3.1

# Installer Plumber
RUN R -e "install.packages('plumber')"

# Copier les fichiers de l'application
COPY . /app
WORKDIR /app

# Exposer le port
EXPOSE 8080

# Commande pour exécuter l'API
CMD ["R", "-e", "pr <- plumber::plumb('api.R'); pr$run(host='0.0.0.0', port=as.numeric(Sys.getenv('PORT')))"]
