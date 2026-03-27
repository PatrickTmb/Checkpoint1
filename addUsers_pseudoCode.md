addUsers_pseudoCode.md
DÉBUT DU SCRIPT

    # ÉTAPE 1 : Vérification si l'arguemnt est égal à 0
    SI le nombre d'arguments est égal à 0 ALORS
        AFFICHER "Il manque les noms d'utilisateurs en argument - Fin du script"
        QUITTER le script
    FIN SI

    # ÉTAPE 2 : Récupérations des arguments du script
    POUR CHAQUE 'nom_utilisateur' fourni en argument FAIRE

        # ÉTAPE 3 : Vérification d'existence de l'utilisateur dans le système
        SI 'nom_utilisateur' existe déjà dans le système ALORS
            AFFICHER "L'utilisateur <nom_utilisateur> existe déjà"
            CONTINUER 
        
        SINON
            # création de l'Utilisateur
            EXÉCUTER la commande de création pour <nom_utilisateur>

            # ÉTAPE 4 : Vérification de la reussite de la création utlisateur addsuser
            SI la commande précédente a réussi ALORS
                AFFICHER "L'utilisateur <nom_utilisateur> a été créé"
            SINON
                AFFICHER "Erreur à la création de l'utilisateur <nom_utilisateur>"
            FIN SI
        FIN SI

    FIN POUR

FIN DU SCRIPT