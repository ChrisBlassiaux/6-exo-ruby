# katas_rb


Exercices de programmation en Ruby...


## Exo 1 - Le palindrone
Le script Ruby permettra de saisir un mot et de vérifier que ce mot est un palindrome.
Le retour de code se fera comme suit :
Le mot mot saisie est un palindrome
Le mot mot saisie n’est pas un palindrome


## exo 2 - Table de multiplication
L’utilisateur devrait renseigne un nombre de 1 chiffre
Le résultat affichera :
 La table de multiplication du chiffre ##chiffre saisie## est :
1 * chiffre saisie = chiffre saisie * 1
2 * …
3 *
…
>
10 *



## exo 3 - Ecrire une méthode qui prendra 2 paramètres nom et surnom qui affichera
Hello  surnom     # si seul le surnom est fourni
Bonjour  nom #   si seul le nom est fourni
Bonjour Nom # *ET QUE* si les 2 sont fournis



## exo 4 - Calcul de la moyenne
Un instituteur souhaite pouvoir aller plus vite en saisissant les notes de ces élèves et en obtenir le nombre est la moyenne pour le trimestre.
Pour cela, Albert qui a suivi une formation dans l’informatique, il y a fort longtemps, lui a proposé de l’aider. Malheureusement, les cours d’Albert sont un peu loin et il vous demande votre aide.
Donc, comme vous êtes de bonnes personnes, vous lui avez tou.te.s dit ouI
Le script devra permettre de saisir note par note,  une fois les notes saisies on stoppera la saisie avec le mot STOP
Afin de ne pas obtenir d’erreur, on s’assure que _les saisies soient bien des chiffres_.
Un fois le mot « STOP »  saisie,
Le programme répondra de lui même qu’il y a eu X notes de saisies et que la moyenne est de Y / 20
_1ere variante  (optionnelle)_
À la saisie des notes, au lieu de saisir note par note, on saisie toutes les notes sur une seule saisie séparée par des espaces, la validation vaudrait l’envoi des note.
_2eme variante (optonnelle)_
Au lieu de faire une moyenne sur 20 on pourrait imaginer faire une moyenne sur 10 20 30 mais aussi permettre de saisir des notes non plus sur 20 mais elles aussi sur 10 20 30, sasvhant que bien entendu, il est possible de saisir en même temps des notes sur 10 et des notes sur 20.



## exo 5 Le poids des mots
À la saisie d’un mot ou d’un groupe de mot séparé par un espace.
Le script devra retourner le poids total du mot ou groupe de mot.
Le principe a = 1 , b = 2, c = 3 … z = 26
Un espace comptera pour 0
Il n’y a pas de différence entre un « A » et un « a » , ils feront tous les 2 un poids de 1
Le nombre sera ramené à un nombre de 1 chiffre
Exemple Z = 26 = 2+6 = 8
*Z vaut d’office 8*
Quelques soit les lettres autour.
Example complet :
D A V I D  =
4_1_22_9_4 =
4 + (2+2) + 9 + 4 =
21
*Pour les plus chauds* :
On pourra imaginer de faire un poids de la lettre * 2 si c’est une lettre majuscule.
(A =1, A= 2….  b=2 B=4)
*Attention* cette modification devra permettre d’utiliser l’une ou l’autre façon de compter.



## exo 6 - Le chiffre est bon, consonne
Dans le cadre de son activité, la société de crédit *PAIETONPRET* a besoin de contrôler le numéro de SIRET des sociétés clientes de leur solution.
Pour cela, elle a, au moment de la saisie par un membre de l’équipe, besoin de contrôler que le membre a bien saisie le numéro de SIRET sans saisir d’erreur de frappe ou d’audition.
Pour cela nous allons utiliser l’algorithme de Luhn.
Votre mission si vous l’acceptez (c’est pas une question) sera de  créer le code qui permettra de vérifier le numéro de SIRET
Le code devra simplement renvoyer  si c’est bon ou pas.
Ce message ne s’auto-détruira pas dans 24h... 