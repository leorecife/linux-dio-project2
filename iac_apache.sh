#!/bin/bash

echo "Atualizando o servidor..."
apt-get update && apt-get upgrade -y

echo "Instalando "
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/leorecife/curriculo/archive/refs/heads/main.zip
unzip curriculo-main.zip
cd curriculo-main
cp -R * /var/www/html/



