<h1> #Cartographie de l'iut de Béziers </h2>
  <p> ************************************* </p>
  <p>L'objectif du projet est de réaliser la cartographie du net.</p>
<p> ************************************* </p>

##Pré-requis
sudo apt-get install traceroute
sudo apt-get install nmap 
sudo apt-get install graphviz
*************************************
##Fabriqué avec les outil: 
-> traceroute
-> nmap
-> graphviz
***********************************
##Fonctionnement
Pour démarer le programme utiliser la commande bash traceroute.sh, 
ensuite le programme vous demanderas combien d'adresse ip vous voulez analyser. 
Rentrez alors le nombre d'adresse ip / domaine que vous voulez analyser.
Ensuite le programme vous demanderas les différentes adresses ip /nom de domaine que vous voulez analyser.
Enfin, le programme effectueras des traceroute avec les protocoles ICMP,TCP et UDP  de toutes les adresses ip 
et affichera à la fin un graphe avec toutes les routes empruntés jusqu'aux adresses de destination. 
****************************************
##Exemple
bash traceroute.sh 
Combien d'adresse IP faut il analyser ?2
Entrer l'adresse 1 : 
umontpellier.fr
Entrer l'adresse 2 : 
ac-montpellier.fr
nmap avec l'adresse ip umontpellier.fr
traceroute avec protocole ICMP de l'adresse umontpellier.fr:
traceroute avec protocole UDP de l'adresse umontpellier.fr:
traceroute avec protocole TCP de l'adresse umontpellier.fr:
nmap avec l'adresse ip ac-montpellier.fr
traceroute avec protocole ICMP de l'adresse ac-montpellier.fr:
traceroute avec protocole UDP de l'adresse ac-montpellier.fr:
traceroute avec protocole TCP de l'adresse ac-montpellier.fr:



**********************************
##Auteur
gregory fuentes alias gregf34110
