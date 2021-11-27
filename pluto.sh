#!/bin/bash

#program bash
#wstaw do wartosci var aktualna date
var=$(date)
#zapisz date w pliku info.log
echo "$var" > info.log
#wyczytaj dostepna pamiec RAM
variable="$(cat /proc/meminfo | grep MemFree | awk '{ print $2 }') dostepnej pamieci RAM"
#zapisz dostepna pamiec RAM w pliku info.log
echo "$variable" >> info.log

