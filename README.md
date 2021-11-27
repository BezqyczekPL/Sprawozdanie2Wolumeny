Zadanie 2
docker build -f Dockerfile -t lab4docker .

Zadanie 3
docker swarm init
docker service create -d --name RemoteVol --mount 'type=volume,source=nfsvolume,target=/app,volume-driver=local,volume-opt=type=nfs,volume-opt=device:/var/docker-nfs,volume-opt=o=addr=10.0.0.10' alpine:latest

Zadanie 4
docker run -it --name alpine4 --memory=512m --mount source=RemoteVol,target=/logi lab4docker

Zadanie 5
a) docker volume inspect RemoteVol
 /var/lib/docker/volumes/RemoteVol/_data

b) docker inspect alpine2000 | grep Memory 


