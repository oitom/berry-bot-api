# Usar uma imagem base do Node.js 20
FROM node:20

# Definir o diretório de trabalho
WORKDIR /usr/src/app

# Copiar o package.json e package-lock.json
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar o restante do código
COPY . .

# Compilar o projeto
RUN npm run build

# Expor a porta em que o NestJS irá rodar
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "run", "start:prod"]
