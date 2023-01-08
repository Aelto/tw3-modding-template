# tw3-modding-template

Modding template based heavily on Aelto's modding template. This modding template provides a development environment to produce a witcher 3 mod that is well 
suited for scripting mods that utilize a menu and localized strings (this template defaults to English). It uses shell scripts instead of bat scripts so to use
the utilities you will need a bash style shell (i.e. `gitbash`). It provides the following utilities:

  1.  encoding w3strings
  2.  installing to game
  3.  starting game (and viewing logs)
  4.  making a release
  
## How to Use

Search entire project for `TODO` and make sure they end up `TODONE`. These include:

  1.  updating `scripts\variables.sh`
  2.  updating `mod-menu.xml`
  3.  updating `strings\en.w3strings.csv`
  
## Utilities

### Encoding Strings

```sh
cd scripts
./encode-csv-strings.sh
```

### Releasing

```sh
cd scripts
./release.sh
```

*Note: release will automatically encode strings*

### Installing

```sh
cd scripts
./install.sh
```

*Note: On next gen, for first install you will need to manually update `dx11FileList.txt` and `dx12FileList.txt`*

### Running the game

```sh
cd scripts
./run-game.bat
```

*Note: running the game does the following: remove compiled redscripts, install, start the game in debug, tails the logs*
