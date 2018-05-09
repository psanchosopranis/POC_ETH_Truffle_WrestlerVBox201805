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

### Instalando `Ganache-cli`como root:

```sh
root@vbxdeb8:~/Descargas# npm install -g ganache-cli
``` 

### Primera ejecución de `ganache-cli` 

```sh
devel@vbxdeb8:~$ ganache-cli
Ganache CLI v6.1.0 (ganache-core: 2.1.0)

Available Accounts
==================
(0) 0xeb4a8de3c6c4c0b4dea506882f80b59b57c874ba
(1) 0xc4b0e67aed7da3ecfe222478512c4ce793d361d7
(2) 0xcc870bd8b5dd3edf902fea16d206d45e2d34e1d5
(3) 0x99a0eec6ed3e7f66ee9ff1d547007e3ab96a126e
(4) 0x67a285945c73bc2c437b3fcb2c0fb09486c7fae7
(5) 0x1e1d87af5421c977a75604651ee663457c34c12b
(6) 0x838eab87a84dfc10f904c5cf0e0fd41edffae30f
(7) 0x4473beba2fe323da4cc5c75ae813229e3757fc04
(8) 0x2d84ea179555a5db90fc20d694844216f4f5a744
(9) 0x1264e056538814a3908a12025aafb39976cc7c38

Private Keys
==================
(0) b7710c30d244ae266c870df61da808e73eeb7ddc1fb876a46970578aea1213ae
(1) e6e1dcc6ac2d7031801b7ab6ecd5a728e3d299bf36a10355aa5e4ad4d91c0e93
(2) 31c30ab4eb11e1c2cc11efc21968c09adb7a48e195373b13888a83e47989d8b5
(3) da383b821f2f782ef796564125ee034707a1a31e86e6a5b1e6f85373aabf2dc9
(4) 2645109b811a4d3b6a44af603401ab52f51bb9d33ba1a21ce1d748be0b84ffe1
(5) 1c531e3c1d12d81bcca38c5e929dcdb127cb5fe133c8dc4a472e3776653749be
(6) c97ffdb76c97ac9dc1922f388f8f6c50961e1594f0d6ce16aaa91d0351a4f27b
(7) 3f987fad68af00f0c45288f3dbe50e8e7fb6f541191b54c617ad46acc4964c92
(8) 5f8f265645d54160fd8bc06db8f80f26a24d9e1256fe73e08405b1bc7e035adf
(9) feccbcceec04c903e9fd93390219425b61daf6dbe4bf24fdb5677c37f462f96c

HD Wallet
==================
Mnemonic:      grunt turn amount mule siren favorite tenant bronze parent fit grit conduct
Base HD Path:  m/44'/60'/0'/0/{account_index}

Listening on localhost:8545

^C (CTRL+C)
```
### Asegurar reinicio `controlado` de `ganache-cli`

Interesa conseguir un reinicio `controlado` de `ganache-cli` con las mismas cuentas (claves privadas, saldos y direcciones) que en este primer arranque para poder apagar la máquina virtual y retomar el tutorial en cualquier punto disponiendo de  las mismas cuentas (claves privadas, saldos y direcciones) que las generadas en el primer arranque arriba descrito. Naturalmente los saldos en Ether se reiniciarán al saldo inicial.

Para ello se han dispuesto dos scripts que consiguen el mismo objetivo pero sirven para mostrar diferentes formas de arrancar `ganache-cli`

#### 1) `scripts/ganache-cli-restart-from-mnemonic.sh`

```sh
#!/bin/bash
set -x
ganache-cli \
    --deterministic \
    --mnemonic "grunt turn amount mule siren favorite tenant bronze parent fit grit conduct" \
    --port 8545 \
    --hostname localhost \
    --gasPrice 20000000000 \
    --gasLimit 90000 \
    --defaultBalanceEther 200
set +x
```

Prueba de ejecución:

```
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ scripts/ganache-cli-restart-from-mnemonic.sh &
[1] 2591
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ + ganache-cli --deterministic --mnemonic 'grunt turn amount mule siren favorite tenant bronze parent fit grit conduct' --port 8545 --hostname localhost --gasPrice 20000000000 --gasLimit 90000 --defaultBalanceEther 200
Ganache CLI v6.1.0 (ganache-core: 2.1.0)

Available Accounts
==================
(0) 0xeb4a8de3c6c4c0b4dea506882f80b59b57c874ba
(1) 0xc4b0e67aed7da3ecfe222478512c4ce793d361d7
(2) 0xcc870bd8b5dd3edf902fea16d206d45e2d34e1d5
(3) 0x99a0eec6ed3e7f66ee9ff1d547007e3ab96a126e
(4) 0x67a285945c73bc2c437b3fcb2c0fb09486c7fae7
(5) 0x1e1d87af5421c977a75604651ee663457c34c12b
(6) 0x838eab87a84dfc10f904c5cf0e0fd41edffae30f
(7) 0x4473beba2fe323da4cc5c75ae813229e3757fc04
(8) 0x2d84ea179555a5db90fc20d694844216f4f5a744
(9) 0x1264e056538814a3908a12025aafb39976cc7c38

Private Keys
==================
(0) b7710c30d244ae266c870df61da808e73eeb7ddc1fb876a46970578aea1213ae
(1) e6e1dcc6ac2d7031801b7ab6ecd5a728e3d299bf36a10355aa5e4ad4d91c0e93
(2) 31c30ab4eb11e1c2cc11efc21968c09adb7a48e195373b13888a83e47989d8b5
(3) da383b821f2f782ef796564125ee034707a1a31e86e6a5b1e6f85373aabf2dc9
(4) 2645109b811a4d3b6a44af603401ab52f51bb9d33ba1a21ce1d748be0b84ffe1
(5) 1c531e3c1d12d81bcca38c5e929dcdb127cb5fe133c8dc4a472e3776653749be
(6) c97ffdb76c97ac9dc1922f388f8f6c50961e1594f0d6ce16aaa91d0351a4f27b
(7) 3f987fad68af00f0c45288f3dbe50e8e7fb6f541191b54c617ad46acc4964c92
(8) 5f8f265645d54160fd8bc06db8f80f26a24d9e1256fe73e08405b1bc7e035adf
(9) feccbcceec04c903e9fd93390219425b61daf6dbe4bf24fdb5677c37f462f96c

HD Wallet
==================
Mnemonic:      grunt turn amount mule siren favorite tenant bronze parent fit grit conduct
Base HD Path:  m/44'/60'/0'/0/{account_index}

Gas Price
==================
20000000000

Gas Limit
==================
90000

Listening on localhost:8545

devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ lsof -i :8545
COMMAND  PID  USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
node    2592 devel   12u  IPv4  36296      0t0  TCP localhost:8545 (LISTEN)
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ fg 
scripts/ganache-cli-restart-from-mnemonic.sh
^C+ set +x
```

#### 2) `scripts/ganache-cli-restart-from-explicit-accounts.sh`

```sh
#!/bin/bash
set -x
ganache-cli \
    --account="0xb7710c30d244ae266c870df61da808e73eeb7ddc1fb876a46970578aea1213ae,200" \
    --account="0xe6e1dcc6ac2d7031801b7ab6ecd5a728e3d299bf36a10355aa5e4ad4d91c0e93,200" \
    --account="0x31c30ab4eb11e1c2cc11efc21968c09adb7a48e195373b13888a83e47989d8b5,200" \
    --account="0xda383b821f2f782ef796564125ee034707a1a31e86e6a5b1e6f85373aabf2dc9,200" \
    --account="0x2645109b811a4d3b6a44af603401ab52f51bb9d33ba1a21ce1d748be0b84ffe1,200" \
    --account="0x1c531e3c1d12d81bcca38c5e929dcdb127cb5fe133c8dc4a472e3776653749be,200" \
    --account="0xc97ffdb76c97ac9dc1922f388f8f6c50961e1594f0d6ce16aaa91d0351a4f27b,200" \
    --account="0x3f987fad68af00f0c45288f3dbe50e8e7fb6f541191b54c617ad46acc4964c92,200" \
    --account="0x5f8f265645d54160fd8bc06db8f80f26a24d9e1256fe73e08405b1bc7e035adf,200" \
    --account="0xfeccbcceec04c903e9fd93390219425b61daf6dbe4bf24fdb5677c37f462f96c,200" \
    --secure -u 0 -u 1 -u 2 -u 3 -u 4 -u 5 -u 6 -u 7 -u 8 -u 9 \
    --port 8545 \
    --hostname localhost \
    --gasPrice 20000000000 \
    --gasLimit 90000
set +x
```

Prueba de Ejecución:

```
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ scripts/ganache-cli-restart-from-explicit-accounts.sh &
[1] 2754
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ + ganache-cli --account=0xb7710c30d244ae266c870df61da808e73eeb7ddc1fb876a46970578aea1213ae,200 --account=0xe6e1dcc6ac2d7031801b7ab6ecd5a728e3d299bf36a10355aa5e4ad4d91c0e93,200 --account=0x31c30ab4eb11e1c2cc11efc21968c09adb7a48e195373b13888a83e47989d8b5,200 --account=0xda383b821f2f782ef796564125ee034707a1a31e86e6a5b1e6f85373aabf2dc9,200 --account=0x2645109b811a4d3b6a44af603401ab52f51bb9d33ba1a21ce1d748be0b84ffe1,200 --account=0x1c531e3c1d12d81bcca38c5e929dcdb127cb5fe133c8dc4a472e3776653749be,200 --account=0xc97ffdb76c97ac9dc1922f388f8f6c50961e1594f0d6ce16aaa91d0351a4f27b,200 --account=0x3f987fad68af00f0c45288f3dbe50e8e7fb6f541191b54c617ad46acc4964c92,200 --account=0x5f8f265645d54160fd8bc06db8f80f26a24d9e1256fe73e08405b1bc7e035adf,200 --account=0xfeccbcceec04c903e9fd93390219425b61daf6dbe4bf24fdb5677c37f462f96c,200 --secure -u 0 -u 1 -u 2 -u 3 -u 4 -u 5 -u 6 -u 7 -u 8 -u 9 --port 8545 --hostname localhost --gasPrice 20000000000 --gasLimit 90000
Ganache CLI v6.1.0 (ganache-core: 2.1.0)

Available Accounts
==================
(0) 0xeb4a8de3c6c4c0b4dea506882f80b59b57c874ba
(1) 0xc4b0e67aed7da3ecfe222478512c4ce793d361d7
(2) 0xcc870bd8b5dd3edf902fea16d206d45e2d34e1d5
(3) 0x99a0eec6ed3e7f66ee9ff1d547007e3ab96a126e
(4) 0x67a285945c73bc2c437b3fcb2c0fb09486c7fae7
(5) 0x1e1d87af5421c977a75604651ee663457c34c12b
(6) 0x838eab87a84dfc10f904c5cf0e0fd41edffae30f
(7) 0x4473beba2fe323da4cc5c75ae813229e3757fc04
(8) 0x2d84ea179555a5db90fc20d694844216f4f5a744
(9) 0x1264e056538814a3908a12025aafb39976cc7c38

Private Keys
==================
(0) b7710c30d244ae266c870df61da808e73eeb7ddc1fb876a46970578aea1213ae
(1) e6e1dcc6ac2d7031801b7ab6ecd5a728e3d299bf36a10355aa5e4ad4d91c0e93
(2) 31c30ab4eb11e1c2cc11efc21968c09adb7a48e195373b13888a83e47989d8b5
(3) da383b821f2f782ef796564125ee034707a1a31e86e6a5b1e6f85373aabf2dc9
(4) 2645109b811a4d3b6a44af603401ab52f51bb9d33ba1a21ce1d748be0b84ffe1
(5) 1c531e3c1d12d81bcca38c5e929dcdb127cb5fe133c8dc4a472e3776653749be
(6) c97ffdb76c97ac9dc1922f388f8f6c50961e1594f0d6ce16aaa91d0351a4f27b
(7) 3f987fad68af00f0c45288f3dbe50e8e7fb6f541191b54c617ad46acc4964c92
(8) 5f8f265645d54160fd8bc06db8f80f26a24d9e1256fe73e08405b1bc7e035adf
(9) feccbcceec04c903e9fd93390219425b61daf6dbe4bf24fdb5677c37f462f96c

Gas Price
==================
20000000000

Gas Limit
==================
90000

Listening on localhost:8545

devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ lsof -i :8545
COMMAND  PID  USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
node    2755 devel   12u  IPv4  39575      0t0  TCP localhost:8545 (LISTEN)
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ fg
scripts/ganache-cli-restart-from-explicit-accounts.sh
^C+ set +x

```

### Inicializando el proyecto `Truffle`

>Nota: Se requiere realizar la inicialización sobre un directorio vacío


```
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ mkdir trufflewksp
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ cd trufflewksp/
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805/trufflewksp$ truffle init
Downloading...
Unpacking...
Setting up...
Unbox successful. Sweet!

Commands:

  Compile:        truffle compile
  Migrate:        truffle migrate
  Test contracts: truffle test
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805/trufflewksp$ tree
.
├── contracts
│   └── Migrations.sol
├── migrations
│   └── 1_initial_migration.js
├── test
├── truffle-config.js
└── truffle.js

3 directories, 4 files
```

### Incorporamos el [código fuente en lenguaje `Solidity` del contrato de ejemplo](https://raw.githubusercontent.com/devzl/ethereum-walkthrough-1/master/Wrestling.sol) en la carpeta `contracts`

```
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805/trufflewksp$ cd contracts/
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805/trufflewksp/contracts$ wget --verbose https://raw.githubusercontent.com/devzl/ethereum-walkthrough-1/master/Wrestling.sol
--2018-05-09 16:40:21--  https://raw.githubusercontent.com/devzl/ethereum-walkthrough-1/master/Wrestling.sol
Resolviendo raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.0.133, 151.101.64.133, 151.101.128.133, ...
Conectando con raw.githubusercontent.com (raw.githubusercontent.com)[151.101.0.133]:443... conectado.
Petición HTTP enviada, esperando respuesta... 200 OK
Longitud: 2704 (2,6K) [text/plain]
Grabando a: “Wrestling.sol”

Wrestling.sol                                        100%[=====================================================================================================================>]   2,64K  --.-KB/s    in 0s      

2018-05-09 16:40:21 (40,5 MB/s) - “Wrestling.sol” guardado [2704/2704]

devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805/trufflewksp/contracts$ tree
.
├── Migrations.sol
└── Wrestling.sol

0 directories, 2 files
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805/trufflewksp/contracts$ cd ..
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805/trufflewksp$ cd ..
devel@vbxdeb8:~/POC/POC_ETH_Truffle_WrestlerVBox201805$ tree
.
├── LICENSE
├── README.md
├── scripts
│   ├── ganache-cli-restart-from-explicit-accounts.sh
│   └── ganache-cli-restart-from-mnemonic.sh
└── trufflewksp
    ├── contracts
    │   ├── Migrations.sol
    │   └── Wrestling.sol
    ├── migrations
    │   └── 1_initial_migration.js
    ├── test
    ├── truffle-config.js
    └── truffle.js

5 directories, 9 files


```

### Fuente descargado `Wrestling.sol`

```sol
pragma solidity ^0.4.18;

    /**
    * Example script for the Ethereum development walkthrough
    */

contract Wrestling {
    /**
    * Our wrestlers
    */
	address public wrestler1;
	address public wrestler2;

	bool public wrestler1Played;
	bool public wrestler2Played;

	uint private wrestler1Deposit;
	uint private wrestler2Deposit;

	bool public gameFinished; 
    address public theWinner;
    uint gains;

    /**
    * The logs that will be emitted in every step of the contract's life cycle
    */
	event WrestlingStartsEvent(address wrestler1, address wrestler2);
	event EndOfRoundEvent(uint wrestler1Deposit, uint wrestler2Deposit);
	event EndOfWrestlingEvent(address winner, uint gains);

    /**
    * The contract constructor
    */
	function Wrestling() public {
		wrestler1 = msg.sender;
	}

    /**
    * A second wrestler can register as an opponent
    */
	function registerAsAnOpponent() public {
        require(wrestler2 == address(0));

        wrestler2 = msg.sender;

        WrestlingStartsEvent(wrestler1, wrestler2);
    }

    /**
    * Every round a player can put a sum of ether, if one of the player put in twice or 
    * more the money (in total) than the other did, the first wins 
    */
    function wrestle() public payable {
    	require(!gameFinished && (msg.sender == wrestler1 || msg.sender == wrestler2));

    	if(msg.sender == wrestler1) {
    		require(wrestler1Played == false);
    		wrestler1Played = true;
    		wrestler1Deposit = wrestler1Deposit + msg.value;
    	} else { 
    		require(wrestler2Played == false);
    		wrestler2Played = true;
    		wrestler2Deposit = wrestler2Deposit + msg.value;
    	}
    	if(wrestler1Played && wrestler2Played) {
    		if(wrestler1Deposit >= wrestler2Deposit * 2) {
    			endOfGame(wrestler1);
    		} else if (wrestler2Deposit >= wrestler1Deposit * 2) {
    			endOfGame(wrestler2);
    		} else {
                endOfRound();
    		}
    	}
    }

    function endOfRound() internal {
    	wrestler1Played = false;
    	wrestler2Played = false;

    	EndOfRoundEvent(wrestler1Deposit, wrestler2Deposit);
    }

    function endOfGame(address winner) internal {
        gameFinished = true;
        theWinner = winner;

        gains = wrestler1Deposit + wrestler2Deposit;
        EndOfWrestlingEvent(winner, gains);
    }

    /**
    * The withdraw function, following the withdraw pattern shown and explained here: 
    * http://solidity.readthedocs.io/en/develop/common-patterns.html#withdrawal-from-contracts
    */
    function withdraw() public {
        require(gameFinished && theWinner == msg.sender);

        uint amount = gains;

        gains = 0;
        msg.sender.transfer(amount);
    }
}
```
### Creamos en la carpeta `migrations` el archivo `2_deploy_contracts.js` con instrucciones para la tarea de `Migrate` del contrato 'Wrestling.sol`

```js
const Wrestling = artifacts.require("./Wrestling.sol")

module.exports = function (deployer) {
    deployer.deploy(Wrestling);
};
```

### Ajustamos el archivo de configuración de Truffle: `truffle.js` 

* para que apunte a una "red de desarrollo" que en nuestro caso está constituida por `Ganache` (cuyo `RPC listener` estará levantado en este tutorial en `localhost` escuchando en el puerto `8545`.
  >`Listening on localhost:8545`)
* para que el despliegue se haga utilizando la `cuenta[0]` de `Ganache` convierténdose en el `owner`de dicho martContract` (*Nota: si no se indica expresamente se toma dicha primera cuenta como cuenta por defecto*)
  >
  >`Available Accounts`  
  >`==================`   
  >`(0) 0xeb4a8de3c6c4c0b4dea506882f80b59b57c874ba`     
  > `... ... ... ...`   
  >
  > `Private Keys`   
  > `==================`   
  > `(0) b7710c30d244ae266c870df61da808e73eeb7ddc1fb876a46970578aea1213ae`  
  > `... ... ... ...`  

#### `truffle.js` 

```js
module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    // nombre de alias de la red 'ficticia' constituida por el nodo Ganache
    localganache: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*", // Match any network id
      // optional config values:
      // gas (Gas limit used for deploys. Default is 4712388)
      // gasPrice (Gas price used for deploys. Default is 100000000000 (100 Shannon).)
      // from (From address used during migrations. Defaults to the first available account provided by your Ethereum client.) 
      from: "0xeb4a8de3c6c4c0b4dea506882f80b59b57c874ba" // PRIMERA CUENTA DE GANACHE SI NO SE INDICA ES LA DE POR DEFECTO
      // provider - web3 provider instance Truffle should use to talk to the Ethereum network.
      //          - function that returns a web3 provider instance (see below.)
      //          - if specified, host and port are ignored.
    }
  }
};
```

El `workspace` de trabajo de Truffle quedará así tras los cambios realizados:

![truffle workspace status](images/IMG01.png "truffle workspace status")


## Probando el código

### 1) Arrancar ganache en un terminal separado (o como proceso de fondo)

```
