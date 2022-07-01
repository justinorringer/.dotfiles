### Stowing files

* Install the stow package.
```sudo dnf -y install stow```

* [Stow](https://www.gnu.org/software/stow/manual/stow.html) has great documentation, but here's the basics

| Argument | Description |
| -------- | ----------- |
| -n       | Previews possible changes |
| -v       | Verbose descriptions      |
| -S       | Stow files (default)      |
| -D       | Delink files              |
| -t       | Specify the path to view  |
| --adopt  | Link files in specific folders |

__Example use__
```
# prints what files will be tracked
stow -nvSt ~ *

# links all files that are in the current directory and the target
stow -vSt ~ *

# unlinks all files
stow -vDt ~ *

# again shows what files will be adopted at the ~ directory
stow --adopt -nvSt ~ *

# links files found in the bash directory
stow --adopt -vSt ~ bash
```