# Servicio [Portainer](https://portainer.io)

Portal para la administración de containers.

Repositorio: ```portainer/portainer```
Arquitectura:  ARMv6

Compose file:

```yaml
version: "3.7"
services:
  portainer:
    image: portainer/portainer:latest
    hostname: portainer
    network:
      - hostnet
    command: -H unix:///var/run/docker.sock
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - /srv/portainer/data:/data

networks:
  hostnet:
    name: host
    external: true
```

