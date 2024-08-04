# Use uma imagem base do Nginx
FROM nginx:alpine

# Remova a configuração padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copie o arquivo HTML para o diretório do Nginx
COPY index.html /usr/share/nginx/html

# Copie a imagem do logo para o diretório do Nginx
COPY logo.png /usr/share/nginx/html

# Exponha a porta 80
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
