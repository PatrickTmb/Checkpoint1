addUsers.sh
#!/bin/bash

#Vérification si l'argument est differnet de zero 0

if [ $# -eq 0 ]
        then 
                echo "Il manque les noms d'utilisateurs en argument - Fin du script"
        exit
fi

#Récuperation des arguments du script en tant $nom_utilisateur avec la boucle For

for  nom_utilisateur in $@
do
        echo $nom_utilisateur

#Vérification de l'\existance de l\'utilisateur à créer dans le système

        if grep -q "^$nom_utilisateur:" < /etc/passwd
        then
                echo "L'utilisateur $nom_utilisateur existe déjà"
        else

#Création de l'utilisateur

        useradd $nom_utilisateur

#Vérification de la reussite de la commande de la création  utilisateur useradd

                if [ $ -eq 0 ]
                then
                        echo "L'utilisateur $nom_utilisateur a bien été crée"
                else
                        echo "Erreur à la création de l'utilisateur $nom_utilisateur"
                fi
        fi
done




