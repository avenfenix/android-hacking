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


## Termux

### Carpetas

`/data/data/com.termux/files/home`
`/storage/emulated/0`

### Acceso Remoto

### Referencias

- [Carpetas por defecto](https://www.preguntandroid.com/pregunta/23211/donde-esta-la-carpeta-en-la-que-termux-se-encuentra-por-defecto)
- [Remote Access - Termux Wiki](https://wiki.termux.com/wiki/Remote_Access)
