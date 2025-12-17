@echo off
echo =================================================================
echo HOSTS
echo =================================================================

echo Route SW1... 
kathara exec host_sw1 -- /bin/bash -c "route add default gw 10.10.91.126"

echo Rutas SW2... 
kathara exec host_sw2 -- /bin/bash -c "route add default gw 10.10.87.254"

echo Rutas SW3... 
kathara exec host_sw3 -- /bin/bash -c "route add default gw 10.10.85.254"

echo Rutas SW4... 
kathara exec host_sw4 -- /bin/bash -c "route add default gw 10.10.81.254"

echo Rutas SW5... 
kathara exec host_sw5 -- /bin/bash -c "route add default gw 10.10.91.62"

echo Rutas SW6... 
kathara exec host_sw6 -- /bin/bash -c "route add default gw 10.10.89.126"

echo Rutas SW7... 
kathara exec host_sw7 -- /bin/bash -c "route add default gw 10.10.90.254"

echo Rutas SW8... 
kathara exec host_sw8 -- /bin/bash -c "route add default gw 10.10.88.254"

echo Rutas SW9... 
kathara exec host_sw9 -- /bin/bash -c "route add default gw 10.10.89.254"

echo Rutas SW10... 
kathara exec host_sw10 -- /bin/bash -c "route add default gw 10.10.91.190"

echo Rutas SW11... 
kathara exec host_sw11 -- /bin/bash -c "route add default gw 10.10.91.238"

echo Rutas SW12... 
kathara exec host_sw12 -- /bin/bash -c "route add default gw 10.10.88.126"

echo Rutas SW13... 
kathara exec host_sw13 -- /bin/bash -c "route add default gw 10.10.90.126"

echo Rutas SW14... 
kathara exec host_sw14 -- /bin/bash -c "route add default gw 10.10.91.222"

echo Rutas SW15... 
kathara exec host_sw15 -- /bin/bash -c "route add default gw 10.10.86.254"

echo Rutas SW16... 
kathara exec host_sw16 -- /bin/bash -c "route add default gw 10.10.84.254"

echo Rutas SW17... 
kathara exec host_sw17 -- /bin/bash -c "route add default gw 10.10.83.254"

echo Rutas SW18... 
kathara exec host_sw18 -- /bin/bash -c "route add default gw 10.10.87.126"

echo =================================================================
echo ROUTERS
echo =================================================================

echo Rutas r1(final)...

echo Rutas r2(final)...


echo Rutas r3(final)...


echo Rutas r4(final)...


echo Rutas r5(final)...


echo Rutas r6(1,3,4,10,11)...
kathara exec r6 -- /bin/bash -c "route add -net 10.10.91.64 netmask 255.255.255.192 gw 10.10.91.245 dev eth1"
kathara exec r6 -- /bin/bash -c "route add -net 10.10.85.0 netmask 255.255.255.0 gw 10.10.91.245 dev eth1"
kathara exec r6 -- /bin/bash -c "route add -net 10.10.80.0 netmask 255.255.254.0 gw 10.10.92.1 dev eth2"
kathara exec r6 -- /bin/bash -c "route add -net 10.10.91.128 netmask 255.255.255.192 gw 10.10.92.1 dev eth2"
kathara exec r6 -- /bin/bash -c "route add -net 10.10.91.224 netmask 255.255.255.240 gw 10.10.92.1 dev eth2"


echo Rutas r7(6,7,13)...
kathara exec r7 -- /bin/bash -c "route add -net 10.10.89.0 netmask 255.255.255.128 gw 10.10.92.29 dev eth1"
kathara exec r7 -- /bin/bash -c "route add -net 10.10.90.128 netmask 255.255.255.128 gw 10.10.92.29 dev eth1"
kathara exec r7 -- /bin/bash -c "route add -net 10.10.90.0 netmask 255.255.255.128 gw 10.10.92.29 dev eth1"

echo Rutas r8(1,3,4,5,6,7,8,10,11,12,13,14,15,17,18)...
kathara exec r8 -- /bin/bash -c "route add -net 10.10.91.64 netmask 255.255.255.192 gw 10.10.92.33 dev eth3"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.85.0 netmask 255.255.255.0 gw 10.10.92.33 dev eth3"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.80.0 netmask 255.255.254.0 gw 10.10.92.33 dev eth3"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.91.0 netmask 255.255.255.192 gw 10.10.92.46 dev eth4"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.89.0 netmask 255.255.255.128 gw 10.10.92.46 dev eth4"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.90.128 netmask 255.255.255.128 gw 10.10.92.46 dev eth4"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.88.128 netmask 255.255.255.128 gw 10.10.92.50 dev eth5"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.91.128 netmask 255.255.255.192 gw 10.10.92.33 dev eth3"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.91.224 netmask 255.255.255.240 gw 10.10.92.33 dev eth3"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.88.0 netmask 255.255.255.128 gw 10.10.92.50 dev eth5"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.90.0 netmask 255.255.255.128 gw 10.10.92.46 dev eth4"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.91.192 netmask 255.255.255.224 gw 10.10.92.50 dev eth5"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.86.0 netmask 255.255.255.0 gw 10.10.92.50 dev eth5"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.82.0 netmask 255.255.254.0 gw 10.10.92.33 dev eth3"
kathara exec r8 -- /bin/bash -c "route add -net 10.10.87.0 netmask 255.255.255.128 gw 10.10.92.46 dev eth4"

echo Rutas r9(6,7,13,18)...
kathara exec r9 -- /bin/bash -c "route add -net 10.10.89.0 netmask 255.255.255.128 gw 10.10.92.41 dev eth1"
kathara exec r9 -- /bin/bash -c "route add -net 10.10.90.128 netmask 255.255.255.128 gw 10.10.92.41 dev eth1"
kathara exec r9 -- /bin/bash -c "route add -net 10.10.90.0 netmask 255.255.255.128 gw 10.10.92.41 dev eth1"
kathara exec r9 -- /bin/bash -c "route add -net 10.10.87.0 netmask 255.255.255.128 gw 10.10.92.41 dev eth1"

echo Rutas r10(8,12,14,15)...
kathara exec r10 -- /bin/bash -c "route add -net 10.10.88.128 netmask 255.255.255.128 gw 10.10.92.21 dev eth0"
kathara exec r10 -- /bin/bash -c "route add -net 10.10.88.0 netmask 255.255.255.128 gw 10.10.92.25 dev eth1"
kathara exec r10 -- /bin/bash -c "route add -net 10.10.91.192 netmask 255.255.255.224 gw 10.10.92.25 dev eth1"
kathara exec r10 -- /bin/bash -c "route add -net 10.10.86.0 netmask 255.255.255.128 gw 10.10.92.25 dev eth1"



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