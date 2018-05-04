# POC_ETH_Truffle_WrestlerVBox201805
Bitácora ampliada con notas propias sobre el desarrollo del tutorial Ethereum Development Walkthrough (Part 2: Truffle, Ganache, Geth and Mist) (https://hackernoon.com/ethereum-development-walkthrough-part-2-truffle-ganache-geth-and-mist-8d6320e12269)
[Autor: https://hackernoon.com/@dev_zl](https://hackernoon.com/@dev_zl)

Contiene la bitácora de progreso de ejecución del tutorial, y de hecho contiene partes literales del tutorial, ampliado con notas y detalles propias y pensado para servir de posible guía para poder reproducir el tutorial cuando sea preciso pero también por si puede ser de utilidad como guía ampliada a terceros.

## Bitácora y notas

### Versión de linux utilizada en este ejemplo
```sh
# cat /etc/issue
Debian GNU/Linux 9 \n \l
# uname -a
Linux vbxdeb8 4.9.0-5-amd64 #1 SMP Debian 4.9.65-3+deb9u2 (2018-01-04) x86_64 GNU/Linux
```



### Instalación de NodeJS 6.0 LTS + npm
[How to Install NodeJS on Debian 9 Stretch Linux ](https://linuxconfig.org/how-to-install-nodejs-on-debian-9-stretch-linux)

```sh
root@vbxdeb8:~# mkdir Descargas
root@vbxdeb8:~# cd Descargas/

root@vbxdeb8:~/Descargas# wget --verbose https://deb.nodesource.com/setup_6.x
--2018-05-01 19:49:21--  https://deb.nodesource.com/setup_6.x
Resolviendo deb.nodesource.com (deb.nodesource.com)... 13.33.235.63, 13.33.235.17, 13.33.235.102, ...
Conectando con deb.nodesource.com (deb.nodesource.com)[13.33.235.63]:443... conectado.
Petición HTTP enviada, esperando respuesta... 200 OK
Longitud: 11040 (11K) [text/plain]
Grabando a: “setup_6.x”

setup_6.x                                   100%[==========================================================================================>]  10,78K  --.-KB/s    in 0s      

2018-05-01 19:49:22 (139 MB/s) - “setup_6.x” guardado [11040/11040]

root@vbxdeb8:~/Descargas# chmod u+x setup_6.x 

root@vbxdeb8:~/Descargas# ./setup_6.x 

root@vbxdeb8:~/Descargas# ./setup_6.x 

## Installing the NodeSource Node.js 6.x LTS Boron repo...


## Populating apt-get cache...

+ apt-get update
Obj:1 http://security.debian.org/debian-security stretch/updates InRelease
Obj:2 http://packages.microsoft.com/repos/vscode stable InRelease                                                               
Ign:3 http://ftp.de.debian.org/debian stretch InRelease                   
Obj:4 http://ftp.de.debian.org/debian stretch-updates InRelease
Obj:5 http://ftp.de.debian.org/debian stretch Release
Leyendo lista de paquetes... Hecho

## Installing packages required for setup: apt-transport-https...

+ apt-get install -y apt-transport-https > /dev/null 2>&1

## Confirming "stretch" is supported...

+ curl -sLf -o /dev/null 'https://deb.nodesource.com/node_6.x/dists/stretch/Release'

## Adding the NodeSource signing key to your keyring...

+ curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
OK

## Creating apt sources list file for the NodeSource Node.js 6.x LTS Boron repo...

+ echo 'deb https://deb.nodesource.com/node_6.x stretch main' > /etc/apt/sources.list.d/nodesource.list
+ echo 'deb-src https://deb.nodesource.com/node_6.x stretch main' >> /etc/apt/sources.list.d/nodesource.list

## Running `apt-get update` for you...

+ apt-get update
Obj:1 http://security.debian.org/debian-security stretch/updates InRelease
Obj:2 http://packages.microsoft.com/repos/vscode stable InRelease                
Ign:3 http://ftp.de.debian.org/debian stretch InRelease                          
Obj:4 http://ftp.de.debian.org/debian stretch-updates InRelease
Obj:5 http://ftp.de.debian.org/debian stretch Release  
Des:7 https://deb.nodesource.com/node_6.x stretch InRelease [4.635 B]
Des:8 https://deb.nodesource.com/node_6.x stretch/main amd64 Packages [1.004 B]
Descargados 5.639 B en 1s (4.811 B/s)
Leyendo lista de paquetes... Hecho

## Run `sudo apt-get install -y nodejs` to install Node.js 6.x LTS Boron and npm
## You may also need development tools to build native addons:
     sudo apt-get install gcc g++ make
## To install the Yarn package manager, run:
     curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
     sudo apt-get update && sudo apt-get install yarn


root@vbxdeb8:~/Descargas# apt-get install -y nodejs
Leyendo lista de paquetes... Hecho
Creando árbol de dependencias       
Leyendo la información de estado... Hecho
El paquete indicado a continuación se instaló de forma automática y ya no es necesario.
  libuv1
Utilice «apt autoremove» para eliminarlo.
Se instalarán los siguientes paquetes NUEVOS:
  nodejs
0 actualizados, 1 nuevos se instalarán, 0 para eliminar y 200 no actualizados.
Se necesita descargar 10,1 MB de archivos.
Se utilizarán 45,6 MB de espacio de disco adicional después de esta operación.
Des:1 https://deb.nodesource.com/node_6.x stretch/main amd64 nodejs amd64 6.14.2-1nodesource1 [10,1 MB]
Descargados 10,1 MB en 1s (5.824 kB/s)
Seleccionando el paquete nodejs previamente no seleccionado.
(Leyendo la base de datos ... 263653 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../nodejs_6.14.2-1nodesource1_amd64.deb ...
Desempaquetando nodejs (6.14.2-1nodesource1) ...
Configurando nodejs (6.14.2-1nodesource1) ...
Procesando disparadores para man-db (2.7.6.1-2) ...

root@vbxdeb8:~/Descargas# node --version
v6.14.2
root@vbxdeb8:~/Descargas# nodejs --version
v6.14.2
root@vbxdeb8:~/Descargas# npm --version
3.10.10


root@vbxdeb8:~/Descargas# curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
OK
root@vbxdeb8:~/Descargas# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
deb https://dl.yarnpkg.com/debian/ stable main


root@vbxdeb8:~/Descargas# apt-get update && sudo apt-get install yarn
Obj:1 http://security.debian.org/debian-security stretch/updates InRelease
Obj:2 http://packages.microsoft.com/repos/vscode stable InRelease                                                  
Ign:3 http://ftp.de.debian.org/debian stretch InRelease                                                            
Obj:4 http://ftp.de.debian.org/debian stretch-updates InRelease
Obj:5 http://ftp.de.debian.org/debian stretch Release  
Obj:6 https://deb.nodesource.com/node_6.x stretch InRelease
Des:7 https://dl.yarnpkg.com/debian stable InRelease [11,5 kB]
Des:9 https://dl.yarnpkg.com/debian stable/main all Packages [7.053 B]
Des:10 https://dl.yarnpkg.com/debian stable/main amd64 Packages [7.053 B]
Descargados 25,6 kB en 1s (15,0 kB/s)
Leyendo lista de paquetes... Hecho
Leyendo lista de paquetes... Hecho
Creando árbol de dependencias       
Leyendo la información de estado... Hecho
El paquete indicado a continuación se instaló de forma automática y ya no es necesario.
  libuv1
Utilice «sudo apt autoremove» para eliminarlo.
Se instalarán los siguientes paquetes NUEVOS:
  yarn
0 actualizados, 1 nuevos se instalarán, 0 para eliminar y 200 no actualizados.
Se necesita descargar 695 kB de archivos.
Se utilizarán 4.428 kB de espacio de disco adicional después de esta operación.
Des:1 https://dl.yarnpkg.com/debian stable/main amd64 yarn all 1.6.0-1 [695 kB]
Descargados 695 kB en 0s (1.428 kB/s)
Seleccionando el paquete yarn previamente no seleccionado.
(Leyendo la base de datos ... 266657 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../archives/yarn_1.6.0-1_all.deb ...
Desempaquetando yarn (1.6.0-1) ...
Configurando yarn (1.6.0-1) ...

root@vbxdeb8:~/Descargas# yarn --version
1.6.0
```

### Instalando Truffle (como root)
```sh
npm install -g truffle
```

```sh
root@vbxdeb8:~/Descargas# npm install -g truffle
/usr/bin/truffle -> /usr/lib/node_modules/truffle/build/cli.bundled.js
/usr/lib
└─┬ truffle@4.1.7 
  ├─┬ mocha@3.5.3 
  │ ├── browser-stdout@1.3.0 
  │ ├─┬ commander@2.9.0 
  │ │ └── graceful-readlink@1.0.1 
  │ ├─┬ debug@2.6.8 
  │ │ └── ms@2.0.0 
  │ ├── diff@3.2.0 
  │ ├── escape-string-regexp@1.0.5 
  │ ├─┬ glob@7.1.1 
  │ │ ├── fs.realpath@1.0.0 
  │ │ ├─┬ inflight@1.0.6 
  │ │ │ └── wrappy@1.0.2 
  │ │ ├── inherits@2.0.3 
  │ │ ├─┬ minimatch@3.0.4 
  │ │ │ └─┬ brace-expansion@1.1.11 
  │ │ │   ├── balanced-match@1.0.0 
  │ │ │   └── concat-map@0.0.1 
  │ │ ├── once@1.4.0 
  │ │ └── path-is-absolute@1.0.1 
  │ ├── growl@1.9.2 
  │ ├── he@1.1.1 
  │ ├── json3@3.3.2 
  │ ├─┬ lodash.create@3.1.1 
  │ │ ├─┬ lodash._baseassign@3.2.0 
  │ │ │ ├── lodash._basecopy@3.0.1 
  │ │ │ └─┬ lodash.keys@3.1.2 
  │ │ │   ├── lodash._getnative@3.9.1 
  │ │ │   ├── lodash.isarguments@3.1.0 
  │ │ │   └── lodash.isarray@3.0.4 
  │ │ ├── lodash._basecreate@3.0.3 
  │ │ └── lodash._isiterateecall@3.0.9 
  │ ├─┬ mkdirp@0.5.1 
  │ │ └── minimist@0.0.8 
  │ └─┬ supports-color@3.1.2 
  │   └── has-flag@1.0.0 
  ├── original-require@1.0.1 
  └─┬ solc@0.4.23 
    ├─┬ fs-extra@0.30.0 
    │ ├── graceful-fs@4.1.11 
    │ ├── jsonfile@2.4.0 
    │ ├── klaw@1.3.1 
    │ └── rimraf@2.6.2 
    ├── memorystream@0.3.1 
    ├── require-from-string@1.2.1 
    ├── semver@5.5.0 
    └─┬ yargs@4.8.1 
      ├─┬ cliui@3.2.0 
      │ ├─┬ strip-ansi@3.0.1 
      │ │ └── ansi-regex@2.1.1 
      │ └── wrap-ansi@2.1.0 
      ├── decamelize@1.2.0 
      ├── get-caller-file@1.0.2 
      ├── lodash.assign@4.2.0 
      ├─┬ os-locale@1.4.0 
      │ └─┬ lcid@1.0.0 
      │   └── invert-kv@1.0.0 
      ├─┬ read-pkg-up@1.0.1 
      │ ├─┬ find-up@1.1.2 
      │ │ ├── path-exists@2.1.0 
      │ │ └─┬ pinkie-promise@2.0.1 
      │ │   └── pinkie@2.0.4 
      │ └─┬ read-pkg@1.1.0 
      │   ├─┬ load-json-file@1.1.0 
      │   │ ├─┬ parse-json@2.2.0 
      │   │ │ └─┬ error-ex@1.3.1 
      │   │ │   └── is-arrayish@0.2.1 
      │   │ ├── pify@2.3.0 
      │   │ └─┬ strip-bom@2.0.0 
      │   │   └── is-utf8@0.2.1 
      │   ├─┬ normalize-package-data@2.4.0 
      │   │ ├── hosted-git-info@2.6.0 
      │   │ ├─┬ is-builtin-module@1.0.0 
      │   │ │ └── builtin-modules@1.1.1 
      │   │ └─┬ validate-npm-package-license@3.0.3 
      │   │   ├─┬ spdx-correct@3.0.0 
      │   │   │ └── spdx-license-ids@3.0.0 
      │   │   └─┬ spdx-expression-parse@3.0.0 
      │   │     └── spdx-exceptions@2.1.0 
      │   └── path-type@1.1.0 
      ├── require-directory@2.1.1 
      ├── require-main-filename@1.0.1 
      ├── set-blocking@2.0.0 
      ├─┬ string-width@1.0.2 
      │ ├── code-point-at@1.1.0 
      │ └─┬ is-fullwidth-code-point@1.0.0 
      │   └── number-is-nan@1.0.1 
      ├── which-module@1.0.0 
      ├── window-size@0.2.0 
      ├── y18n@3.2.1 
      └─┬ yargs-parser@2.4.1 
        └── camelcase@3.0.0 

root@vbxdeb8:~/Descargas# truffle version
Truffle v4.1.7 (core: 4.1.7)
Solidity v0.4.23 (solc-js)

```

### We also will
