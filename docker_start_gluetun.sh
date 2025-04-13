docker run -d \
  --name=gluetun \
  --cap-add=NET_ADMIN \
  --device=/dev/net/tun \
  -e VPN_SERVICE_PROVIDER=protonvpn \
  -e VPN_TYPE=wireguard \
  -e WIREGUARD_PRIVATE_KEY=aL+PYd5NRCP1kh7QMGaesp2QTSbzyZZxiHpYyIR4WU8=\
  -e WIREGUARD_ADDRESSES=10.2.0.2/32 \
  -e SERVER_COUNTRIES=Australia \
  -e VPN_PORT_FORWARDING=on \
  -e PORT_FORWARD_ONLY=on \
  -e TZ=UTC \
  -v ~/docker/gluetun-data:/tmp/gluetun \
  -p 8888:8888/tcp \
  --restart unless-stopped \
  qmcgaw/gluetun

