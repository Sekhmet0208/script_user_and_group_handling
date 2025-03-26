# 🛠️ setup_user.sh – Script de création d’utilisateur DevOps

Un script Bash simple mais puissant pour automatiser la création d’un utilisateur Linux, son groupe, son espace dédié, et la gestion des permissions.  
💼 Utilisable pour préparer rapidement des environnements de dev, test ou prod.

---

## ✨ Fonctionnalités

- Création d’un **nouvel utilisateur**
- Création ou récupération d’un **groupe spécifique**
- Ajout de l’utilisateur au groupe
- Création d’un répertoire `/srv/<utilisateur>`
- Attribution des **permissions sécurisées** (`chmod 770`)
- Affectation du **propriétaire (user:group)** du dossier
- Affichage clair de chaque étape

---

## 📦 Structure créée

```
Utilisateur : alice
Groupe     : devops

Répertoire créé :
/srv/alice

Permissions :
- alice peut lire/écrire/exécuter
- Les membres du groupe `devops` aussi
- Tous les autres : aucun accès
```

---

## 🚀 Utilisation

```bash
sudo ./deuz.sh
```

### Le script vous demandera :
- Le nom du nouvel utilisateur
- Le nom du groupe (optionnel, peut être identique au user)

---

## 🔒 Permissions utilisées

- `groupadd`
- `adduser`
- `usermod`
- `mkdir`
- `chown`
- `chmod`

💡 Le script nécessite des droits `sudo`.

---

## 🧐 À venir / Idées d'amélioration

- Ajout du support des options `-u` / `-g`
- Support du flag `--help`
- Ajout d’un fichier `welcome.txt` dans le répertoire
- Gestion avancée des erreurs (si user/dossier existe déjà)
- Logging dans un fichier `.log`

---

## 📜 Exemples d'exécution

```bash
$ sudo ./deuz.sh
 entrez un utilisateur
alice
 entrez un groupe
devops
le groupe existe
l'utilisateur n'existe pas
...
le dossier /srv/alice a été attribué à l'utilisateur alice et au groupe devops
```

---

## 👨‍💻 Auteur

Script réalisé par **sekhmet0208** – monter en skill Linux/DevOps 🧠⚙️  
N’hésite pas à forker, modifier, ou contribuer !
