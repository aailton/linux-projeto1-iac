#!/bin/bash

echo "Iniciando..."

echo "Criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso! Criando os diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso! Atribuíndo grupos aos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Atribuição concluída! Definindo permissões nos diretórios..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões concluídas! Criando os usuários..."
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd primeiroacesso) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd primeiroacesso) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd primeiroacesso) -G GRP_ADM

useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd primeiroacesso) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd primeiroacesso) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd primeiroacesso) -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd primeiroacesso) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd primeiroacesso) -G GRP_SEC
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd primeiroacesso) -G GRP_SEC

echo "Usuários criados com sucesso! Processo finalizado!"

