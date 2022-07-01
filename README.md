# My .dotfiles

Here's my .dotfiles repo with some settings I don't want to replicate.

If you want a backup yourself, follow [this amazing tutorial](https://youtu.be/CFzEuBGPPPg) by [DevInsideYou](https://www.youtube.com/c/DevInsideYou).

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
stow -nvSt ~ * # prints what files will be tracked
stow -vSt ~ * # links all files that are in the current directory and the target
stow -vDt ~ * # unlinks all files
 
stow --adopt -nvSt ~ * # again shows what files will be adopted at the ~ directory
stow --adopt -vSt ~ bash # links files found in the bash directory
```