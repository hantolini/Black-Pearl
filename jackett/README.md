# Servicio [Jackett](https://github.com/Jackett/Jackett)

Servicio de API para el acceso a los trackers torrent mas conocidos

Repositorio [```lsioarmhf/jackett```](https://hub.docker.com/r/lsioarmhf/jackett)
Arquitectura: ARMv6

Compose File:

```yaml
version: '3.7'
services:
  jackett:
    image: lsioarmhf/jackett:latest
    hostname: jackett
    environment:
      - TZ=America/Buenos_Aires
      - PGID=1000
      - PUID=1000
    deploy:
      mode: replicated
      replicas: 1
      labels: [APP=PVR]
      restart_policy:
        condition: on-failure
    networks:
      - hostnet
    volumes:
      - "/srv/services/jackett/config:/config"
      - "/srv/torrents/watch:/downloads"

networks:
  hostnet:
    external: true
    name: host
```
