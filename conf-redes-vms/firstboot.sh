#!/bin/bash

echo ""
echo "Digite o ip da interface enp0s8 desta máquina:"
read ip_enp0s8
echo "source /etc/network/interfaces.d/*" > /etc/network/interfaces
echo "" > /etc/network/interfaces
echo "auto lo" > /etc/network/interfaces
echo "iface lo inet loopbac" > /etc/network/interfaces
echo "" > /etc/network/interfaces
echo "auto enp0s3" > /etc/network/interfaces
echo "iiface enp0s3 inet dhcp" > /etc/network/interfaces
echo "" > /etc/network/interfaces
echo "auto enp0s8" > /etc/network/interfaces
echo "iface enp0s8 inet static" > /etc/network/interfaces
echo "   address $ip_enp0s8" > /etc/network/interfaces
echo "   netmask 255.255.255.0" > /etc/network/interfaces
echo "   network 192.168.56.0" > /etc/network/interfaces
echo "   broadcast 192.168.56.255" > /etc/network/interfaces
service networking restart
sleep 1
echo "Função executada."
sleep 3
echo "Agora vamos mudar o nome desta estação de trabalho."
sleep 2
echo ""
echo "Insira o nome deste servidor:"
read nome_da_estacao
echo $nome_da_estacao > /etc/hostname
echo "127.0.0.1 localhost" > /etc/hosts
echo "127.0.1.1 $nome_da_estacao" >> /etc/hosts
echo "192.168.56.10 web01" >> /etc/hosts
echo "192.168.56.11 web02" >> /etc/hosts
echo "192.168.56.20 haproxy" >> /etc/hosts
sleep 1
echo "Função executada."
sleep 3
