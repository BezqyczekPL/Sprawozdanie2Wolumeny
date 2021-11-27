# Zadanie 2
Aby zbudować obraz należy wydać polecenie

`docker build -f Dockerfile -t lab4docker .`

# Zadanie 3
Aby utworzyć wolumen RemoteVol, którego katalog udostępniany jest przez NFS v3 należy wydać polecenia:

`docker swarm init`


`docker service create -d --name RemoteVol --mount 'type=volume,source=nfsvolume,target=/app,volume-driver=local,volume-opt=type=nfs,volume-opt=device:/var/docker-nfs,volume-opt=o=addr=10.0.0.10' alpine:latest`


# Zadanie 4
Aby uruchomić kontener alpine4 z 512 MB ramu z podłączonym wolumenem RemoteVol należy wydać polecenie
`docker run -it --name alpine4 --memory=512m --mount source=RemoteVol,target=/logi lab4docker`

# Zadanie 5
a) 
Za pomocą polecenia
`docker volume inspect RemoteVol` 
znajdujemy katalog, w którym zapisują się dane info.log w wolumenie.
Ścieżka tego katalogu to: /var/lib/docker/volumes/RemoteVol/_data

b) Wpisując to polecenie :`docker inspect alpine4 | grep Memory` znajdujemy linijkę Memory, która zawiera informację o tym, że kontener ma ograniczoną wartość pamięci RAM 


