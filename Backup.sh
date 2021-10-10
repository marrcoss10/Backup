#!/bin/bash
fecha=$(date +%d-%m-%y)
fechaAnt=$(date -d yesterday +%d-%m-%y)
cd /var/tmp/Backups/SGSSI/Sec
mkdir $fecha
cd /home/marcos/Escritorio/Seguridad
rsync -av --link-dest=/var/tmp/Backups/SGSSI/Sec/$fechaAnt . /var/tmp/Backups/SGSSI/Sec/$fecha

#luego desde root 
#crontab -e
#Ejemplo todos los dias a las 12 del medio dia --> 0 12 * * * /home/marcos/Escritorio/backup.sh
