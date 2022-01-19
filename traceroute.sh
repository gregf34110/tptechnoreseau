#!/bin/bash
echo -n "Combien d'adresse IP faut il analyser ?"
read a
tab_ip=()
for (( i=1; i<=$a; i++ ))
do
	echo "Entrer l'adresse $i : "
	read ip
	tab_ip[${#tab_ip[*]}]=$ip
done
rm -r ./fichier
mkdir fichier

for ip in ${tab_ip[*]}
do
	echo "nmap avec l'adresse ip $ip"
	sudo nmap -sU -sT $ip > ./fichier/nmap.txt$ip
	tcp=$(grep tcp ./fichier/nmap.txt$ip | cut -d'/' -f1 | grep -w "80" )
	udp=$(grep udp ./fichier/nmap.txt$ip |cut -d'/' -f1 | grep -w  "33459" )

	echo  "traceroute avec protocole ICMP de l'adresse $ip:"
	sudo traceroute -I -d -A $ip | awk '{ print $3,$4 }' | sed '1d' | sed '/*  */d' > ./fichier/traceroute_ICMP$ip

	echo "traceroute avec protocole UDP de l'adresse $ip:"
	sudo traceroute -U -d -A $ip -p $udp 80 | awk '{ print $3,$4 }' | sed '1d' | sed '/*  */d' > ./fichier/traceroute_UDP$ip

	echo  "traceroute avec protocole TCP de l'adresse $ip:"
	sudo traceroute -T -d -A $ip -p $tcp 53  | awk '{ print $3,$4 }' | sed '1d' | sed '/*  */d' > ./fichier/traceroute_TCP$ip

done

echo 'digraph G {' > ./fichier/graphe1.dot
liste=("TCP" "UDP" "ICMP")
couleur=("red" "blue" "green")
echo '"protocole"->"TCP" [color=red];' >> ./fichier/graphe1.dot
echo '"protocole"->"UDP" [color=blue];' >> ./fichier/graphe1.dot
echo '"protocole"->"ICMP" [color=green];' >> ./fichier/graphe1.dot
for ip in ${tab_ip[*]}
do
	i=0
	while (($i<3))
	do
        	fichier="./fichier/traceroute_"${liste[i]}$ip
        	l=0
        	ligne_precedente=0
        	while read ligne
        	do
                	if (($l!=0))
                	then
                        	echo -e "\"$ligne_precedente""\" -> "\"$ligne""\" [fillcolor=${couleur[i]}, label="\"$ip"\"] "" >> ./fichier/graphe1.dot

                	fi
                	ligne_precedente=$ligne
                	l=$(($l+1))
        	done < $fichier
        	i=$i+1
	done
done
echo } >> ./fichier/graphe1.dot

#dot -Tps -o ./fichier/graphe1.png ./fichier/graphe1.dot
#dotty ./fichier/graphe1.dot



 sudo cat ./fichier/graphe1.dot | dot -T png > ./fichier/graphe1.png && xdg-open ./fichier/graphe1.png
