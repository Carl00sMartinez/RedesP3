@echo off
echo =================================================================
echo HOSTS
echo =================================================================

echo Config SW1...
kathara exec host_sw1 -- /bin/bash -c "ifconfig eth0 10.10.91.65 netmask 255.255.255.192 broadcast 10.10.91.127 up" 

echo Direccion SW2...
kathara exec host_sw2 -- /bin/bash -c "ifconfig eth0 10.10.87.129 netmask 255.255.255.128 broadcast 10.10.87.255 up" 

echo Direccion SW3...
kathara exec host_sw3 -- /bin/bash -c "ifconfig eth0 10.10.85.1 netmask 255.255.255.0 broadcast 10.10.85.255 up" 

echo Direccion SW4...
kathara exec host_sw4 -- /bin/bash -c "ifconfig eth0 10.10.80.1 netmask 255.255.254.0 broadcast 10.10.81.255 up" 

echo Direccion SW5...
kathara exec host_sw5 -- /bin/bash -c "ifconfig eth0 10.10.91.1 netmask 255.255.255.192 broadcast 10.10.91.63 up" 

echo Direccion SW6...
kathara exec host_sw6 -- /bin/bash -c "ifconfig eth0 10.10.89.1 netmask 255.255.255.128 broadcast 10.10.89.127 up" 

echo Direccion SW7...
kathara exec host_sw7 -- /bin/bash -c "ifconfig eth0 10.10.90.129 netmask 255.255.255.128 broadcast 10.10.90.255 up" 

echo Direccion SW8...
kathara exec host_sw8 -- /bin/bash -c "ifconfig eth0 10.10.88.129 netmask 255.255.255.128 broadcast 10.10.88.255 up" 

echo Direccion SW9...
kathara exec host_sw9 -- /bin/bash -c "ifconfig eth0 10.10.89.129 netmask 255.255.255.128 broadcast 10.10.89.255 up" 

echo Direccion SW10...
kathara exec host_sw10 -- /bin/bash -c "ifconfig eth0 10.10.91.129 netmask 255.255.255.192 broadcast 10.10.91.191 up" 

echo Direccion SW11...
kathara exec host_sw11 -- /bin/bash -c "ifconfig eth0 10.10.91.225 netmask 255.255.255.240 broadcast 10.10.91.239 up" 

echo Direccion SW12...
kathara exec host_sw12 -- /bin/bash -c "ifconfig eth0 10.10.88.1 netmask 255.255.255.128 broadcast 10.10.88.127 up" 

echo Direccion SW13...
kathara exec host_sw13 -- /bin/bash -c "ifconfig eth0 10.10.90.1 netmask 255.255.255.128 broadcast 10.10.90.127 up" 

echo Direccion SW14...
kathara exec host_sw14 -- /bin/bash -c "ifconfig eth0 10.10.91.193 netmask 255.255.255.224 broadcast 10.10.91.223 up" 

echo Direccion SW15...
kathara exec host_sw15 -- /bin/bash -c "ifconfig eth0 10.10.86.1 netmask 255.255.255.0 broadcast 10.10.86.255 up" 

echo Direccion SW16...
kathara exec host_sw16 -- /bin/bash -c "ifconfig eth0 10.10.84.1 netmask 255.255.255.0 broadcast 10.10.84.255 up" 

echo Direccion SW17...
kathara exec host_sw17 -- /bin/bash -c "ifconfig eth0 10.10.82.1 netmask 255.255.254.0 broadcast 10.10.83.255 up" 

echo Direccion SW18...
kathara exec host_sw18 -- /bin/bash -c "ifconfig eth0 10.10.87.1 netmask 255.255.255.128 broadcast 10.10.87.127 up" 

echo =================================================================
echo ROUTERS
echo =================================================================

echo Direccion r1(1,3,r6)...
kathara exec r1 -- /bin/bash -c "ifconfig eth0 10.10.91.126 netmask 255.255.255.128 broadcast 10.10.91.127 up" 
kathara exec r1 -- /bin/bash -c "ifconfig eth1 10.10.85.254 netmask 255.255.255.0 broadcast 10.10.85.255 up"
kathara exec r1 -- /bin/bash -c "ifconfig eth2 10.10.91.245 netmask 255.255.255.252 broadcast 10.10.91.247 up"

echo Direccion r2(4,10,11,r6)...
kathara exec r2 -- /bin/bash -c "ifconfig eth0 10.10.81.254 netmask 255.255.254.0 broadcast 10.10.81.255 up"
kathara exec r2 -- /bin/bash -c "ifconfig eth1 10.10.91.190 netmask 255.255.255.192 broadcast 10.10.91.191 up"
kathara exec r2 -- /bin/bash -c "ifconfig eth2 10.10.91.238 netmask 255.255.255.240 broadcast 10.10.91.239 up"
kathara exec r2 -- /bin/bash -c "ifconfig eth3 10.10.92.1 netmask 255.255.255.252 broadcast 10.10.92.3 up"

echo Direccion r3(8,r10)...
kathara exec r3 -- /bin/bash -c "ifconfig eth0 10.10.88.254 netmask 255.255.255.128 broadcast 10.10.88.255 up"
kathara exec r3 -- /bin/bash -c "ifconfig eth1 10.10.92.21 netmask 255.255.255.252 broadcast 10.10.92.23 up"

echo Direccion r4(12,14,15,r10)...
kathara exec r4 -- /bin/bash -c "ifconfig eth0 10.10.88.126 netmask 255.255.255.128 broadcast 10.10.88.127 up"
kathara exec r4 -- /bin/bash -c "ifconfig eth1 10.10.91.222 netmask 255.255.255.224 broadcast 10.10.91.223 up"
kathara exec r4 -- /bin/bash -c "ifconfig eth2 10.10.86.254 netmask 255.255.255.0 broadcast 10.10.86.255 up"
kathara exec r4 -- /bin/bash -c "ifconfig eth3 10.10.92.25 netmask 255.255.255.252 broadcast 10.10.92.27 up"

echo Direccion r5(6,7,13,r7)...
kathara exec r5 -- /bin/bash -c "ifconfig eth0 10.10.89.126 netmask 255.255.255.128 broadcast 10.10.89.127 up"
kathara exec r5 -- /bin/bash -c "ifconfig eth1 10.10.90.254 netmask 255.255.255.128 broadcast 10.10.90.255 up"
kathara exec r5 -- /bin/bash -c "ifconfig eth2 10.10.90.126 netmask 255.255.255.128 broadcast 10.10.90.127 up"
kathara exec r5 -- /bin/bash -c "ifconfig eth3 10.10.92.29 netmask 255.255.255.252 broadcast 10.10.92.31 up"

echo Direccion r6(17,r1,r2,r8)...
kathara exec r6 -- /bin/bash -c "ifconfig eth0 10.10.83.254 netmask 255.255.254.0 broadcast 10.10.83.255 up"
kathara exec r6 -- /bin/bash -c "ifconfig eth1 10.10.91.246 netmask 255.255.255.252 broadcast 10.10.91.247 up"
kathara exec r6 -- /bin/bash -c "ifconfig eth2 10.10.92.2 netmask 255.255.255.252 broadcast 10.10.92.3 up"
kathara exec r6 -- /bin/bash -c "ifconfig eth3 10.10.92.33 netmask 255.255.255.252 broadcast 10.10.92.35 up"

echo Direccion r7(18,r5,r9)...
kathara exec r7 -- /bin/bash -c "ifconfig eth0 10.10.87.126 netmask 255.255.255.128 broadcast 10.10.87.127 up"
kathara exec r7 -- /bin/bash -c "ifconfig eth1 10.10.92.30 netmask 255.255.255.252 broadcast 10.10.92.31 up"
kathara exec r7 -- /bin/bash -c "ifconfig eth2 10.10.92.41 netmask 255.255.255.252 broadcast 10.10.92.43 up"

echo Direccion r8(2,9,16,r6,r9,r10)...
kathara exec r8 -- /bin/bash -c "ifconfig eth0 10.10.87.254 netmask 255.255.255.128 broadcast 10.10.87.255 up"
kathara exec r8 -- /bin/bash -c "ifconfig eth1 10.10.89.254 netmask 255.255.255.128 broadcast 10.10.89.255 up"
kathara exec r8 -- /bin/bash -c "ifconfig eth2 10.10.84.254 netmask 255.255.255.0 broadcast 10.10.84.255 up"
kathara exec r8 -- /bin/bash -c "ifconfig eth3 10.10.92.34 netmask 255.255.255.252 broadcast 10.10.92.35 up"
kathara exec r8 -- /bin/bash -c "ifconfig eth4 10.10.92.45 netmask 255.255.255.252 broadcast 10.10.92.47 up"
kathara exec r8 -- /bin/bash -c "ifconfig eth5 10.10.92.49 netmask 255.255.255.252 broadcast 10.10.92.51 up"

echo Direccion r9(5,r7,r8)...
kathara exec r9 -- /bin/bash -c "ifconfig eth0 10.10.91.62 netmask 255.255.255.192 broadcast 10.10.91.63 up"
kathara exec r9 -- /bin/bash -c "ifconfig eth1 10.10.92.42 netmask 255.255.255.252 broadcast 10.10.92.43 up"
kathara exec r9 -- /bin/bash -c "ifconfig eth2 10.10.92.46 netmask 255.255.255.252 broadcast 10.10.92.47 up"

echo Direccion r10(r3,r4,r8)...
kathara exec r10 -- /bin/bash -c "ifconfig eth0 10.10.92.22 netmask 255.255.255.252 broadcast 10.10.92.23 up"
kathara exec r10 -- /bin/bash -c "ifconfig eth1 10.10.92.26 netmask 255.255.255.252 broadcast 10.10.92.27 up"
kathara exec r10 -- /bin/bash -c "ifconfig eth2 10.10.92.50 netmask 255.255.255.252 broadcast 10.10.92.51 up"


echo =================================================================
echo CONFIGURACIÓN COMPLETADA
echo =================================================================
echo PARA PROBAR:
echo kathara exec host_sw2 -- ping -c 3 172.20.176.1
echo kathara exec r8 -- ping -c 3 172.20.176.1
echo kathara exec host_sw2 -- route -n
echo kathara exec r8 -- route -n
echo kathara exec host_sw2 -- traceroute -n 172.20.176.1
echo kathara exec r8 -- traceroute -n 172.20.187.1
echo kathara exec host_sw2 -- tcpdump -i eth0
echo kathara exec r9 -- pkill tcpdump
pause