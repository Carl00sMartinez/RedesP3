# chmod +x tu_script.sh

echo "================================================================="
echo "CONFIGURACIÓN DE RUTAS E IPS"
echo "================================================================="

#Configuracion de host
host_config(){
    local nombre=$1
    local ip=$2
    local mask=$3
    local broadcast=$4
    local gateway=$5
    
    echo "Configurando host $nombre: IP=$ip, GATEWAY=$gateway, MASK=$mask, BROADCAST=$broadcast"
     kathara exec $nombre -- /bin/bash -c "
        ifconfig eth0 $ip netmask $mask broadcast $broadcast up
        echo '$nombre configurado: $ip/$mask' >> /tmp/config.log
    "

}

echo "=== CONFIGURANDO HOSTS==="

# SW1 (50 hosts) - 172.20.187.0/26
configurar_host host_sw1 172.20.187.1 255.255.255.192 172.20.187.63

# SW4 (357 hosts) - 172.20.176.0/23 
configurar_host host_sw4 172.20.176.1 255.255.254.0 172.20.177.255

echo "===CONFIGURANDO ROUTERS==="

echo "Ida: SW1-1-7-6-2-SW4"
echo "Vuelta: SW4-2-4-5-1-SW1"

echo "r1..."
kathara exec r1 -- /bin/bash -c "  
ifconfig eth0 172.20.187.62 netmask 255.255.255.192 broadcast 172.20.187.63 up      # SW1
ifconfig eth1 172.20.187.217 netmask 255.255.255.252 broadcast 172.20.187.219 up    # ida 7
ifconfig eth2 172.20.187.210 netmask 255.255.255.252 broadcast 172.20.187.211 up    # vuelta 5

route add -net 172.20.176.0 netmask 255.255.254.0 gw 172.20.187.217 dev eth1        # ida
"

echo "r7..."
kathara exec r7 -- /bin/bash -c "
ifconfig eth0 172.20.187.218 netmask 255.255.255.252 broadcast 172.20.187.219 up    # 1-7
ifconfig eth1 172.20.187.229 netmask 255.255.255.252 broadcast 172.20.187.231 up    # 7-6

# RUTAS DE IDA (hacia SW4 por R6)
route add -net 172.20.176.0 netmask 255.255.254.0 gw 172.20.187.230 dev eth1        #ida
"

# -------------------- ROUTER R6 --------------------
echo "r6..."
kathara exec r6 -- /bin/bash -c "
ifconfig eth0 172.20.187.230 netmask 255.255.255.252 broadcast up 172.20.187.231 # Desde R7
ifconfig eth1 172.20.187.237 netmask 255.255.255.252 broadcast up 172.20.187.239 # Hacia R2

# RUTAS DE IDA (hacia SW4 por R2)
route add -net 172.20.176.0 netmask 255.255.254.0 gw 172.20.187.238 dev eth1        # ida
"

# -------------------- ROUTER R2 --------------------
echo "r2..."
kathara exec r2 -- /bin/bash -c "
ifconfig eth0 172.20.187.238 netmask 255.255.255.252 broadcast 172.20.187.238 up    # Desde R6
ifconfig eth1 172.20.177.254 netmask 255.255.254.0 broadcast 172.20.177.255 up      # Hacia SW4
ifconfig eth2 172.20.187.245 netmask 255.255.255.252 broadcast 172.20.187.247 up    # Hacia R4 (regreso)

# SW4 está conectado directamente (no necesita ruta)

# RUTAS DE REGRESO (hacia SW1 por R4)
route add -net 172.20.187.0 netmask 255.255.255.192 gw 172.20.187.246 dev eth2
"

# -------------------- ROUTER R4 --------------------
echo "R4..."
kathara exec r4 -- /bin/bash -c "
ifconfig eth0 172.20.187.246 netmask 255.255.255.252 broadcast 172.20.187.247 up    # Desde R2
ifconfig eth1 172.20.187.221 netmask 255.255.255.252 broadcast 172.20.187.223 up    # Hacia R5

# RUTAS DE REGRESO (hacia SW1 por R5)
route add -net 172.20.187.0 netmask 255.255.255.192 gw 172.20.187.222 dev eth1
"

# -------------------- ROUTER R5 --------------------
echo "R5..."
kathara exec r5 -- /bin/bash -c "
ifconfig eth0 172.20.187.222 netmask 255.255.255.252 broadcast 172.20.187.223 up    # Desde R4
ifconfig eth1 172.20.187.209 netmask 255.255.255.252 broadcast 172.20.187.2011 up    # Hacia R1

# RUTAS DE REGRESO (hacia SW1 por R1)
route add -net 172.20.187.0 netmask 255.255.255.192 gw 172.20.187.210 dev eth1
"

