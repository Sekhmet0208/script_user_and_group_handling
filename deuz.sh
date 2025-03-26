#!/bin/bash
echo " entrez un utilisateur "
read user
echo " entrez un groupe "
read groupe 
if getent group $groupe > /dev/null
then
    echo "le groupe existe"
else
    echo "le groupe n'existe pas"
    groupadd $groupe
fi
if id "$user" &>/dev/null
then
    echo "l'utilisateur existe"
else
    echo "l'utilisateur n'existe pas"
    adduser $user
fi
echo "l'utilisateur $user a été ajouté"
usermod -a -G $groupe $user
echo "l'utilisateur $user a été ajouté au groupe $groupe"
mkdir /srv/$user
echo "le dossier /srv/$user a été créé"
chown $user:$groupe /srv/$user
echo "le dossier /srv/$user a été attribué à l'utilisateur $user et au groupe $groupe"
chmod 770 /srv/$user