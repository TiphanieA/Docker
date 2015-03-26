Lancer Dockerfile
docker build {repertoire contenant le Dockerfile} -t {nom de l'image}

Créer conteneur dbdata :
docker create -v /var/lib/mysql --name dbdata project-boinc

Conteneur boincdata
docker create -v /data/projects --name boincdata project-boinc

Conteneur apachedata
docker create -v /etc/apache2 --name apachedata project-boinc

Lancer l'image en mode interactif:
docker run -i -t -h projet.com -p 80:80 --volumes-from dbdata --volumes-from boincdata -volumes-from apachedata project-boinc

Lancer l'image en mod daemon :
docker run -i -d -h projet.com -p 80:80 --volumes-from dbdata --volumes-from boincdata -volumes-from apachedata “image” /data/start_script.sh
