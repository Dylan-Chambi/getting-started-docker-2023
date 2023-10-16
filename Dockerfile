# Lo primero que hay que hacer es definir la imagen base
FROM node:18-alpine

# Definir el directorio de trabajo
WORKDIR /app

# Copiamos todo el contenido de la carpeta actual a la carpeta de trabajo
COPY . .

# Instalamos las dependencias
RUN yarn install --production

# Ejecutamos el comando para iniciar la aplicación  
CMD ["node", "src/index.js"]

# Exponemos el puerto 3000
EXPOSE 3000