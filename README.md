# auto-virtual-fish

A util to auto activate and deactivate virtual fish based on current directory location.

## Dependencies
1. [virtualfish](https://github.com/adambrenecki/virtualfish)

## Set up
1. Add the location of the [newenv](https://github.com/cravatsc/auto-virtual-fish/blob/master/Utils/newenv) to your PATH
2. Add [vEnvManager.fish](https://github.com/cravatsc/auto-virtual-fish/blob/master/functions/vEnvManager.fish) to your `~/.config/fish/functions/` directory
3. Source this script and either use `funcsave vEnvManager` or add `source ~/.config/fish/functions/vEnvManager.fish` to your `~/.config/fish/config.fish` file

## Usage
To create a new virtual env, from the base directory of your project, run `newenv {envName}`. This will generate a new virtual env that is tied to your project via the .vf file.

When changing into your base directory of a project, the virtual env tied to your project will be activated. This will stay activated until you leave the base directory path associated with the env.
