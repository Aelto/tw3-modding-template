# tw3-modding-template

Modding template based heavily on Aelto's modding template. This modding template provides a development environment to produce a witcher 3 mod that is well 
suited for scripting mods that utilize a menu and localized strings (this template defaults to English). It provides the following utilities:

  1.  encoding w3strings
  2.  installing to game
  3.  starting game
  4.  making a release
  
## How to Use

Search entire project for `TODO` and make sure they end up `TODONE`. These include:

  1.  updating `scripts\variables.cmd`
  2.  updating `mod-menu.xml`
  3.  updating `strings\en.w3strings.csv`
  
## Utilities

### Encoding Strings

```cmd
cd scripts
.\encode-csv-strings.bat
```

### Releasing

```cmd
cd scripts
.\release.bat
```

*Note: release will automatically encode strings*

### Installing

```cmd
cd scripts
.\install.bat
```

*Note: On next gen, for first install you will need to manually update `dx11FileList.txt` and `dx12FileList.txt`*

### Running the game

```cmd
cd scripts
.\run-game.bat
```
