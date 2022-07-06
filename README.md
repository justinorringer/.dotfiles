# My .dotfiles

Here's my .dotfiles repo with some settings I don't want to replicate.

If you want a backup yourself, follow [this amazing tutorial](https://youtu.be/CFzEuBGPPPg) by [DevInsideYou](https://www.youtube.com/c/DevInsideYou).

## Repository Layout
For programs with true dotfiles, I used stow, but for apps like Guake that don't use dotfiles, Deconf was used to dump the data into a file.

### Stow
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

### Deconf
Inside each folder, I'll probably have an export, import, and reset script. The export script loads the data into the .config file.

### Running the scripts
Run like other shell scripts:
```
cd _directory_
chmod +x export.sh
./export.sh
```

## More extensive examples
[dotfiles.github.io](dotfiles.github.io) has many user setting samples.