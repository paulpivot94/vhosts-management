# vhosts-management
Gestion des virtual Hosts sur un serveur Apache, sous Linux

# Script de Création de Virtual Host Apache

Ce script shell automatisé vous permet de créer un nouveau virtual host sur votre serveur Apache. Il prend en charge la configuration complète, y compris la création du répertoire racine, la configuration du fichier de virtual host, l'activation du site, et le redémarrage du serveur Apache.

## Prérequis

- Un système d'exploitation basé sur Unix/Linux.
- Apache HTTP Server installé et opérationnel.

## Utilisation

1. Clonez ce dépôt sur votre serveur :
   
   ```bash
   git clone https://github.com/paulpivot94/vhosts-management.git

2. Accédez au répertoire du script :

    ```bash
    cd chemin/vers/votre-repo

3. Assurez-vous que le script a les permissions d'exécution :

    ```bash
    chmod +x create-virtual-host.sh

4. Exécutez le script suivi du nom de votre virtual host (sous-domaine du localhost) :

    ```bash
    ./create-virtual-host.sh mon-vhost

5. Suivez les instructions à l'écran pour créer et configurer votre virtual host.

## Fonctionnalités
- Crée un répertoire racine pour le site.
- Génère automatiquement le fichier de configuration du virtual host.
- Active le virtual host et redémarre le serveur Apache.
- Prise en charge des domaines personnalisés et des adresses IP.

## Avertissement
Assurez-vous de comprendre les actions effectuées par ce script avant de l'exécuter. Une mauvaise utilisation pourrait affecter la configuration de votre serveur Apache.

## Licence
Ce script est distribué sous la licence MIT. Consultez le fichier LICENSE pour plus d'informations.

    ```rust
    N'oubliez pas d'ajuster les chemins, les commandes et les instructions en fonction de la configuration spécifique de votre serveur.
