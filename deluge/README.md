# Servicio [Deluge](https://deluge-torrent.org))

Servicio para la busqueda de series de televisión en Torrent y USENet

Repositorio [```lsioarmhf/deluge```](https://hub.docker.com/r/lsioarmhf/deluge)
Arquitectura: ARMv6

Compose File:

```yaml
version: '3.7'
services:
  deluge:
    image: lsioarmhf/deluge:latest
    hostname: deluge
    environment:
      - TZ=America/Buenos_Aires
      - PUID=1000
      - PGID=1000
    deploy:
      mode: replicated
      replicas: 1
      labels: [APP=PVR]
      restart_policy:
        condition: on-failure
    networks:
      - hostnet
    volumes:
      - "/srv/services/deluge/config:/config"
      - "/srv/torrents:/downloads"

networks:
  hostnet:
    external: true
    name: host
```
