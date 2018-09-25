# Black-Pearl

Configuración de servidor basado en Raspberry Pi 3 B+

## Sistema operativo 

```
PRETTY_NAME="Raspbian GNU/Linux 9 (stretch)"
NAME="Raspbian GNU/Linux"
VERSION_ID="9"
VERSION="9 (stretch)"
ID=raspbian
ID_LIKE=debian
HOME_URL="http://www.raspbian.org/"
SUPPORT_URL="http://www.raspbian.org/RaspbianForums"
BUG_REPORT_URL="http://www.raspbian.org/RaspbianBugs"
HYPRIOT_OS="HypriotOS/armhf"
HYPRIOT_OS_VERSION="v2.0.1"
HYPRIOT_DEVICE="Raspberry Pi"
HYPRIOT_IMAGE_VERSION="v1.9.0"
```

Basado en Hypriot - Docker en Raspberry Pi

## Servicios que brinda

* [Portainer](https://portainer.io/) - Portal para la administración de los contenedores en el RPi
* Servicios de Video Digital (PVR - Personal Video Recorder)
  - [Sonarr](https://sonarr.tv) - Servicio para la busqueda e indexación de series de TV. Utiliza Torrent y USENet
  - [Radarr](https://radarr.video) - Servicio para la busqueda e indexación de películas. Utiliza Torrent y USENet
  - [Jackett](https://github.com/Jackett/Jackett) - Servicio de API para los trackers torrents mas conocidos
  - [Deluge](https://deluge-torrent.org/) - Cliente BitTorrent
* Servicios de Cloud privado
* Servicios de monitoreo
