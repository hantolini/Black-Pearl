# Servicio [Sonarr](https://sonarr.tv)

Servicio para la busqueda de series de televisión en Torrent y USENet

Repositorio [```lsioarmhf/sonarr```](https://hub.docker.com/r/lsioarmhf/sonarr)
Arquitectura: ARMv6

Compose File:

```yaml
version: '3.7'
services:
  sonarr:
    image: lsioarmhf/sonarr:latest
    hostname: sonarr
    environment:
      - TZ=America/Buneos_Aires
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
      - "/srv/services/sonarr/config:/config"
      - "/srv/torrents/complete:/downloads"
      - "/srv/tv:/tv"

networks:
  hostnet:
    external: true
    name: host
```
