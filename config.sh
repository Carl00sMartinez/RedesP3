#!/bin/bash
echo "================================================================="
echo "CONFIGURACIÓN"
echo "================================================================="

echo "=== CONFIGURANDO HOSTS ==="

# host_sw1
echo "Configurando host_sw1 (SW1 -> SW4)"
kathara exec host_sw1 -- /bin/bash -c "
    ifconfig eth0 172.20.187.1 netmask 255.255.255.192 broadcast 172.20.187.63 up
    route add -net 172.20.176.0 netmask 255.255.254.0 gw 172.20.187.62 dev eth0
    echo 'host_sw1: 172.20.187.1/26, ruta a 172.20.176.0/23 via 172.20.187.62'
"

# host_sw4
echo "Configurando host_sw4 (SW4 -> SW1)"
kathara exec host_sw4 -- /bin/bash -c "
    ifconfig eth0 172.20.176.1 netmask 255.255.254.0 broadcast 172.20.177.255 up
    route add -net 172.20.187.0 netmask 255.255.255.192 gw 172.20.177.254 dev eth0
    echo 'host_sw4: 172.20.176.1/23, ruta a 172.20.187.0/26 via 172.20.177.254'
"

echo ""
echo "=== CONFIGURANDO ROUTERS ==="

echo "--- R1 ---"
kathara exec r1 -- /bin/bash -c "
    ifconfig eth0 172.20.187.62 netmask 255.255.255.192 broadcast 172.20.187.63 up
    ifconfig eth1 172.20.187.217 netmask 255.255.255.252 broadcast 172.20.187.219 up
    ifconfig eth2 172.20.187.210 netmask 255.255.255.252 broadcast 172.20.187.211 up
    route add -net 172.20.176.0 netmask 255.255.254.0 gw 172.20.187.218 dev eth1
"

echo "--- R7 ---"
kathara exec r7 -- /bin/bash -c "
    ifconfig eth0 172.20.187.218 netmask 255.255.255.252 broadcast 172.20.187.219 up
    ifconfig eth1 172.20.187.229 netmask 255.255.255.252 broadcast 172.20.187.231 up
    route add -net 172.20.176.0 netmask 255.255.254.0 gw 172.20.187.230 dev eth1
"

echo "--- R6 ---"
kathara exec r6 -- /bin/bash -c "
    ifconfig eth0 172.20.187.230 netmask 255.255.255.252 broadcast 172.20.187.231 up
    ifconfig eth1 172.20.187.237 netmask 255.255.255.252 broadcast 172.20.187.239 up
    route add -net 172.20.176.0 netmask 255.255.254.0 gw 172.20.187.238 dev eth1
"

echo "--- R2 ---"
kathara exec r2 -- /bin/bash -c "
    ifconfig eth0 172.20.187.238 netmask 255.255.255.252 broadcast 172.20.187.239 up
    ifconfig eth1 172.20.177.254 netmask 255.255.254.0 broadcast 172.20.177.255 up
    ifconfig eth2 172.20.187.245 netmask 255.255.255.252 broadcast 172.20.187.247 up
    route add -net 172.20.187.0 netmask 255.255.255.192 gw 172.20.187.246 dev eth2
"

echo "--- R4 ---"
kathara exec r4 -- /bin/bash -c "
    ifconfig eth0 172.20.187.246 netmask 255.255.255.252 broadcast 172.20.187.247 up
    ifconfig eth1 172.20.187.221 netmask 255.255.255.252 broadcast 172.20.187.223 up
    route add -net 172.20.187.0 netmask 255.255.255.192 gw 172.20.187.222 dev eth1
"

echo "--- R5 ---"
kathara exec r5 -- /bin/bash -c "
    ifconfig eth0 172.20.187.222 netmask 255.255.255.252 broadcast 172.20.187.223 up
    ifconfig eth1 172.20.187.209 netmask 255.255.255.252 broadcast 172.20.187.211 up  # CORREGIDO: 211, NO 2011
    route add -net 172.20.187.0 netmask 255.255.255.192 gw 172.20.187.210 dev eth1
"

echo "=== CONFIGURACIÓN COMPLETADA ==="