#!/bin/bash

read -p "Digite um IP: " ip

read oc1 oc2 oc3 oc4 <<< "$( tr '.' ' ' <<< ${ip} )"
echo

x=1
for oc in ${oc1} ${oc2} ${oc3} ${oc4}
do
	bin=$( bc <<< "obase=2;${oc}" )
	bin=$( printf %8s "${bin}" | tr ' ' '0' )
	
	echo "Octeto #${x}: ${oc} em binário ${bin}"
	
	x=$(( ${x} + 1 ))
done