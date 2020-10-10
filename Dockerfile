# FROM -> Qual versão de qual máquina utilizar
FROM node:alpine

# WORKDIR -> Diretório dentro da máquina onde quero trabalhar
WORKDIR /usr/app

# Copiar todos os arquivos package*json pra dentro da minha máquina (/usr/app)
COPY package*.json ./
RUN npm install

# Copia o restante dos arquivos menos os que estão em dockerignore
COPY . .

# Qual a porta que será exposta para minha máquina acessar
EXPOSE 3000

# ÚNICA POR DOCKERFILE -> Qual o comando para minha aplicação iniciar
CMD ["npm", "start"]

# -p qual a porta da maquina e do servidor
# -d qual o nome da imagem 
# docker run -p 3000:3000 -d diegozago/dockernode