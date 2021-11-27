#wybor obrazu bazowego alpine
FROM alpine
#autor dockerfile'a
LABEL author="Dawid Nicpon"
#utworz katalog /logi
RUN mkdir -p /logi
#podlaczenie wolumenu
VOLUME /logi
#ustawienie przestrzenie roboczej na logi
WORKDIR /logi
#skopiuj plik pluto do przestrzeni roboczej
COPY pluto.sh pluto.sh
#uruchom przy stracie program pluto.sh
ENTRYPOINT [ "sh","./pluto.sh" ]
