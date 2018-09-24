#!/bin/bash
# Code by Javier E. Perez P. <templeofdvst@gmail.com>
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux

# COLORS
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
WHITE='\033[37m'
NOCOLOR='\033[0m'

TZ='Asia/Hong_Kong';
echo -e "${RED}Hon${WHITE}g K${RED}ong${NOCOLOR}:	" `date`

TZ='Europe/Paris';
echo -e "${BLUE}Fr${WHITE}an${RED}ce${NOCOLOR}:		" `date`

TZ='America/Bogota';
echo -e "${YELLOW}Bo${BLUE}go${RED}ta${NOCOLOR}:		" `date`
