# Android Hacking Repo

## Como instalar Dotnet y OpenBullet2

### Instalacion 
```
pkg install mono -y;
wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh -q;
chmod +x dotnet-install.sh;
./dotnet-install.sh -c LTS;
./dotnet-install.sh -c STS;
echo 'export DOTNET_ROOT=$HOME/.dotnet' >> ~/.bashrc
echo 'export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools' >> ~/.bashrc
```

### Referencias

- [Como descargar y empezar en OpenBullet](https://discourse.openbullet.dev/t/how-to-download-and-start-openbullet-2/29)
- [Dotnet 6.0](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)
- [Package Request: .NET Core - Termux - Github](https://github.com/termux/termux-packages/issues/516)

## Wifite

### Requirements Tools

#### Aircrack-ng

```
bash -c "$(curl -fsSL https://github.com/avenfenix/android-hacking/blob/e600f167e90d64479db266397f4ba7ba3acffad3/install_aircrack.sh)"

~ $ ./install-aircrack.sh
Get:1 https://packages-cf.termux.dev/apt/termux-main stable InRelease [14.0 kB]
Get:2 https://packages-cf.termux.dev/apt/termux-main stable/main aarch64 Packages [494 kB]
Fetched 508 kB in 6s (86.9 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
81 packages can be upgraded. Run 'apt list --upgradable' to see them.
E: dpkg was interrupted, you must manually run 'dpkg --configure -a' to correct the problem.
E: dpkg was interrupted, you must manually run 'dpkg --configure -a' to correct the problem.
E: dpkg was interrupted, you must manually run 'dpkg --configure -a' to correct the problem.
./install-aircrack.sh: line 20: syntax error: unexpected end of file
~ $ dpkg --configute -a
dpkg: error: unknown option --configute

Type dpkg --help for help about installing and deinstalling packages [*];
Use 'apt' or 'aptitude' for user-friendly package management;
Type dpkg -Dhelp for a list of dpkg debug flag values;
Type dpkg --force-help for a list of forcing options;
Type dpkg-deb --help for help about manipulating *.deb files;

Options marked [*] produce a lot of output - pipe it through 'less' or 'more' !
~ $ dpkg --configure -a
dpkg: dependency problems prevent configuration of lld:
 lld depends on libllvm (= 16.0.6-2); however:
  Package libllvm is not installed.

dpkg: error processing package lld (--configure):
 dependency problems - leaving unconfigured
dpkg: dependency problems prevent configuration of libcompiler-rt:
 libcompiler-rt depends on libllvm (= 16.0.6-2); however:
  Package libllvm is not installed.

dpkg: error processing package libcompiler-rt (--configure):
 dependency problems - leaving unconfigured
dpkg: dependency problems prevent configuration of llvm:
 llvm depends on libllvm (= 16.0.6-2); however:
  Package libllvm is not installed.

dpkg: error processing package llvm (--configure):
 dependency problems - leaving unconfigured
Errors were encountered while processing:
 lld
 libcompiler-rt
 llvm

```

```
apt update
apt upgrade
apt install python
apt install python2
apt install wget
apt install git

```


Refer: [INSTALAR WIFITE EN ANDROID](https://informaticacolectiva.com/es_es/instalar-wifite-en-android-termux-facil-y-rapido/) 

## Termux

- [Repositorio Oficial](https://github.com/termux/termux-app)
- [Releases - Descargas](https://github.com/termux/termux-app/releases/)

### Carpetas

`/data/data/com.termux/files/home`
`/storage/emulated/0`

### Acceso Remoto

**En tu android**

```
pkg upgrade
pkg install openssh
```

* Revisar archivo y que todo este correcto usando `nano $PREFIX/etc/ssh/sshd_config`

```
PrintMotd yes
PasswordAuthentication yes
Subsystem sftp /data/data/com.termux/files/usr/libexec/sftp-server
```

* Revisar tu nombre de usuario con `whoami`

**En el otro dispositivo**
```
ssh <usuario>@<IP> -p 8022
```

### Referencias

- [Carpetas por defecto](https://www.preguntandroid.com/pregunta/23211/donde-esta-la-carpeta-en-la-que-termux-se-encuentra-por-defecto)
- [Remote Access - Termux Wiki](https://wiki.termux.com/wiki/Remote_Access)
- [How to use ssh in Termux | Secure Shell - Youtube](https://www.youtube.com/watch?v=x4zS7DS-l9A)
