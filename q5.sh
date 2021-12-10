#!/bin/bash

read -p "insira a senha que vai ser testada: " password

echo $password | grep -E '([a-z])([0-9])' | grep -E '([A-Z])' && echo "senha dentro do padrão" || echo -e "senha não se encontra no  padrão exigido"