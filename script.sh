#!/bin/bash

echo "Cerrar zoiper y Google Chrome" >> diagnostico.txt
echo "" >> diagnostico.txt
echo "Cerrando Zoiper" >> diagnostico.txt
pkill zoiper

echo "" >> diagnostico.txt
echo "Cerrando Chrome" >> diagnostico.txt
pkill chrome

echo "" >> diagnostico.txt
echo "Test de velocidad" >> diagnostico.txt
speedtest --simple >> diagnostico.txt

echo "" >> diagnostico.txt
echo "Test de memoria RAM" >> diagnostico.txt
free >> diagnostico.txt

echo "" >> diagnostico.txt
echo "Ping de respuesta" >>diagnostico.txt

ping -c 200 google.com -q >> diagnostico.txt
sleep 10
echo "" >> diagnostico.txt
echo "Cache eliminada" >> diagnostico.txt
systemd-resolve --flush-caches

#Script de python para enviar mensaje de diagnostico
python3 AvisoTelegram.py

clear

rm diagnostico.txt




