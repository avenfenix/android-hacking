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
