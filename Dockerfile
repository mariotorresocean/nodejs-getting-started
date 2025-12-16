FROM node:20-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia os arquivos de dependências
COPY package*.json ./

# Instala as dependências de produção
RUN npm ci --only=production

# Copia o restante do código da aplicação
COPY . .

# Define o usuário 'node' por segurança (não rodar como root)
USER node

# Expõe a porta que a aplicação usa
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
