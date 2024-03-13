# Jenkins_Homework

# Apache Webserver Telepítő Repository

Ez a repository tartalmazza a szükséges fájlokat és konfigurációkat az Apache webszerver telepítéséhez Jenkins segítségével.

## Fájlok leírása:

- **Jenkins_file.txt**: Ez a fájl tartalmazza a Jenkins pipeline definícióját, amely letölti a repository-t, futtatja a bash scriptet, majd elmenti az apache_install_date.txt fájlt mint artifact.

- **apache_install.sh**: Ebben a bash scriptben találhatók azok a parancsok, amelyek telepítik az Apache webszervert és létrehozzák az apache_install_date.txt fájlt az aktuális dátummal.

- **apache_install_date.txt**: Ez a fájl tartalmazza az Apache webszerver telepítésének dátumát és időpontját. Amit az apache_install.sh script hoz létre.

## Használati útmutató:

1. Jenkinsben konfiguráld a pipeline-t a Jenkinsfile alapján.
2. Győződj meg róla, hogy a bash scripted helyesen működik és a megfelelő helyen van a repository-ban.
3. Futtasd a Jenkins pipeline-t és ellenőrizd, hogy sikeresen telepítette-e az Apache webszervert és létrehozta-e az apache_install_date.txt fájlt.


