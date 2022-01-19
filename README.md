<h1> #Cartographie de l'iut de Béziers </h2>
    <p>L'objectif du projet est de réaliser la cartographie du net.</p>


 <h2> ##Pré-requis </h2> 
<p> sudo apt-get install traceroute </p>
<p> sudo apt-get install nmap </p> 
<p> sudo apt-get install graphviz </p> 

<h2> ##Fabriqué avec les outil:</h2>  
<p> -> traceroute </p> 
<p> -> nmap </p> 
<p> -> graphviz </p> 

<h2> ##Fonctionnement </h2> 
<p> Pour démarer le programme utiliser la commande bash traceroute.sh, 
ensuite le programme vous demanderas combien d'adresse ip vous voulez analyser. 
Rentrez alors le nombre d'adresse ip / domaine que vous voulez analyser.
Ensuite le programme vous demanderas les différentes adresses ip /nom de domaine que vous voulez analyser.
Enfin, le programme effectueras des traceroute avec les protocoles ICMP,TCP et UDP  de toutes les adresses ip 
et affichera à la fin un graphe avec toutes les routes empruntés jusqu'aux adresses de destination. </p>  

<h2> ##Exemple </h2> 
<p> bash traceroute.sh </p>  
<p>  Combien d'adresse IP faut il analyser ?2 </p> 
<p>  Entrer l'adresse 1 : </p> 
<p>  umontpellier.fr </p> 
<p> Entrer l'adresse 2 : </p>  
<p>  ac-montpellier.fr </p>  
<p>  nmap avec l'adresse ip umontpellier.fr </p> 
<p> traceroute avec protocole ICMP de l'adresse umontpellier.fr: </p> 
<p> traceroute avec protocole UDP de l'adresse umontpellier.fr: </p> 
<p> traceroute avec protocole TCP de l'adresse umontpellier.fr: </p> 
<p> nmap avec l'adresse ip ac-montpellier.fr </p> 
<p> traceroute avec protocole ICMP de l'adresse ac-montpellier.fr: </p> 
 <p> traceroute avec protocole UDP de l'adresse ac-montpellier.fr: </p> 
<p> traceroute avec protocole TCP de l'adresse ac-montpellier.fr: </p> 


<h2> ##Auteur </h2>
<p> gregory fuentes alias gregf34110 </p>
