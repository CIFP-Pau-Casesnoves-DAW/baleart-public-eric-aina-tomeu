# baleart-public-eric-aina-tomeu
baleart-public-eric-aina-tomeu created by GitHub Classroom

URL Servidor:
baleart.tomeuvich.com

URL d'ajuda API:
baleart.tomeuvich.com/exemple-app/public/api

Correu: client@gmail.com
Contrasenya: clientpassword

1. Primer de tot s'ha de fer el login, sinó no es pot accedir a la resta de l'API. Per iniciar sessió, s'ha d'accedir a baleart.tomeuvich.com/exemple-app/public/api/login mitjançant "post" i ficar-li com a paràmetres email: client@gmail.com i password: clientpassword. Això tornarà un token.
2. A continuació, amb el token que ha donat, s'ha de crear un usuari per a cada un dels membres amb el mètode baleart.tomeuvich.com/exemple-app/public/api/usuaris mitjançant "post". S'ha d'introduir el token per la capçalera (header) amb un paràmetre anomenat "Authorization" que tengui com a valor "Bearer token", on token és el valor del vostre token. Això s'ha de fer perquè us pugueu connectar un parell a la vegada.
3. Ara, amb aquest nou usuari que us heu creat, tornau a iniciar sessió com al punt 1. Aquest token que us tornarà serà el que haureu d'utilitzar per a la resta de mètodes, ficant-li a tots el token per la capçalera (header) amb un paràmetre anomenat "Authorization" que tengui com a valor "Bearer token", on token és el valor del vostre token.
