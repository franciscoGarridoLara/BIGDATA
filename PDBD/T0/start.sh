#!/bin/bash
echo "Comprobando si el clusterCDH6 esta inicializado..."
sudo docker stop node1.essentials & process_id=$!
wait $process_id

echo "Iniciando clusterCDH6..."
sudo docker start node1.essentials & process_id=$!
wait $process_id
sleep 6
ssh root@node1  'echo -e "172.18.0.1      pasarela.essentials pasarela" >> /etc/hosts'
echo "Proceso finalizado. El cluster estara disponible en unos minutos..."
