@echo off
echo =================================================================
echo regreso de SW1 -
echo =================================================================
echo Route SW  1(4)... 
kathara exec host_sw1 -- /bin/bash -c "route add default gw 10.10.91.126"

echo Direccion 1...
echo Rutas 1-6...
kathara exec r1 -- /bin/bash -c "route add -net 10.10.87.128 netmask 255.255.255.128 gw 10.10.91.246 dev eth2"

echo =================================================================
echo regreso de SW3 -
echo =================================================================

echo Config SW7...
echo Route SW7... 
kathara exec host_sw3 -- /bin/bash -c "route add default gw 10.10.85.254"

echo =================================================================
echo regreso de SW4 -
echo =================================================================
echo Route SW4... 
kathara exec host_sw4 -- /bin/bash -c "route add default gw 10.10.81.254"

echo Direccion 2...
echo Rutas 2-6...
kathara exec r2 -- /bin/bash -c "route add -net 10.10.87.128 netmask 255.255.255.128 gw 10.10.92.2 dev eth3"

echo Direccion 6...
echo Rutas 6-8...
kathara exec r6 -- /bin/bash -c "route add -net 10.10.87.128 netmask 255.255.255.128 gw 10.10.92.34 dev eth3"


echo =================================================================
echo regreso de SW5 -
echo =================================================================

echo Route SW7... 
kathara exec host_sw5 -- /bin/bash -c "route add default gw 10.10.91.62"

echo =================================================================
echo regreso de SW6 -
echo =================================================================
echo Route SW7... 
kathara exec host_sw6 -- /bin/bash -c "route add default gw 10.10.89.126"

echo =================================================================
echo regreso de SW7 -
echo =================================================================
echo Route SW7... 
kathara exec host_sw7 -- /bin/bash -c "route add default gw 10.10.90.254"

echo Direccion 9...
echo Rutas 9-8...
kathara exec r9 -- /bin/bash -c "route add -net 10.10.87.128 netmask 255.255.255.128 gw 10.10.92.45 dev eth2"

echo Direccion 7...
echo Rutas 7-9...
kathara exec r7 -- /bin/bash -c "route add -net 10.10.87.128 netmask 255.255.255.128 gw 10.10.92.42 dev eth2"

echo Direccion 5...
echo Rutas 5-7...
kathara exec r5 -- /bin/bash -c "route add -net 10.10.87.128 netmask 255.255.255.128 gw 10.10.92.30 dev eth3"

echo =================================================================
echo regreso de SW8 -
echo =================================================================
echo Route SW8... 
kathara exec host_sw8 -- /bin/bash -c "route add default gw 10.10.88.254"

echo Direccion 3...
echo Rutas 10-3...
kathara exec r3 -- /bin/bash -c "route add -net 10.10.87.128 netmask 255.255.255.128 gw 10.10.92.22 dev eth1"

echo Direccion 10...
echo Rutas 10-8 ...
kathara exec r10 -- /bin/bash -c "route add -net 10.10.87.128 netmask 255.255.255.128 gw 10.10.92.49 dev eth2"

echo =================================================================
echo regreso de SW10 -
echo =================================================================
echo Route SW4... 
kathara exec host_sw10 -- /bin/bash -c "route add default gw 10.10.91.190"

echo =================================================================
echo regreso de SW11 -
echo =================================================================
echo Route SW4... 
kathara exec host_sw11 -- /bin/bash -c "route add default gw 10.10.91.238"

echo =================================================================
echo regreso de SW12 -
echo =================================================================
echo Route SW12(8)... 
kathara exec host_sw12 -- /bin/bash -c "route add default gw 10.10.88.126"

echo Direccion 4...
echo Rutas 4-10...
kathara exec r4 -- /bin/bash -c "route add -net 10.10.87.128 netmask 255.255.255.128 gw 10.10.92.26 dev eth3"

echo =================================================================
echo regreso de SW13 -
echo =================================================================
echo Route SW7... 
kathara exec host_sw13 -- /bin/bash -c "route add default gw 10.10.90.126"

echo =================================================================
echo regreso de SW14 -
echo =================================================================
echo Route SW12... 
kathara exec host_sw14 -- /bin/bash -c "route add default gw 10.10.91.222"

echo =================================================================
echo regreso de SW15 -
echo =================================================================
echo Route SW12... 
kathara exec host_sw15 -- /bin/bash -c "route add default gw 10.10.86.254"

echo =================================================================
echo regreso de SW17 - 
echo =================================================================
echo Route SW4... 
kathara exec host_sw17 -- /bin/bash -c "route add default gw 10.10.83.254"


echo =================================================================
echo regreso de SW18 -
echo =================================================================
echo Route SW7... 
kathara exec host_sw18 -- /bin/bash -c "route add default gw 10.10.87.126"


echo =================================================================
echo CONFIGURACIÓN COMPLETADA
echo ================================================================