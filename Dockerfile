#infraestrutura

#de onde ele está começando a imagem = node
FROM node:latest 

#configuração do usuário/permissões
WORKDIR /user/app/

#instalação das dependências
#copia arquivos da máquina host para dentro da imagem durante o processo de build
COPY package*.json ./
COPY yarn.lock ./
#usa o shell e roda os comandos 
RUN yarn install


COPY . ./

#porta do servidor
EXPOSE 3000 

#execução => comando de saída 
CMD ["yarn", "start"]