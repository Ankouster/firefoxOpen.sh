#!/bin/bash

#######################################
#      firefoxOpen | Basic Script     #
#######################################

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

tput civis # oculta el cursor

# CTRL+C (para cancelar la acción)
ctrl_c(){
  echo -e "\n\n"${yellowColour}[+]${endColour}${grayColour} Cancelando procesos...${endColour}
  tput cnorm # devuelve el cursor
  pkill firefox # cierra firefox
  exit 1 # Termina el script
}

# llama a la función "ctrl_c"
trap ctrl_c SIGINT

# Advertencias
echo -e "\n"${yellowColour}[!]${endColour}${grayColour} Recuerda actualizar el OS que estés usando${endColour}
sleep 2
echo -e "\n"${yellowColour}[!]${endColour}${grayColour} Recuerda instalar figlet con "sudo apt install figlet" para que todo funcione a la perfección${endColour}"\n\n\n"

# Espera 5 segundos antes de ejecutar el siguiente comandos
sleep 5

# Te da la bienvenida (sale en grande)
figlet Bienvenido

# Espera 2 segundos antes de ejecutar el siguiente comando
sleep 2

# Mensaje a Color
echo -e "\n\n"${yellowColour}[+]${endColour}${grayColour} Abriendo Firefox. Puedes cancelar, tienes 5 segundos...${endColour}
sleep 3
echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 5...${endColour}
sleep 1
echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 4...${endColour}
sleep 1
echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 3...${endColour}
sleep 1
echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 2...${endColour}
sleep 1
echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 1...${endColour}
sleep 1
echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Recuperando Cursor...${endColour}
sleep 2
echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Abriendo firefox...${endColour}
sleep 2
tput cnorm # devuelve el cursor

firefox &>/dev/null # abre el firefox en segundo plano y manda los logs al vacío
echo -e "\n"${yellowColour}[!]${endColour}${grayColour} Firefox se ha abierto correctamente!${endColour}





###################################
#        Script By Ankouster      #
###################################

###################################
#              Hello              #
###################################
