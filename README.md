# Celeste windows linux-ifier

This repo contains a little script set up a celeste windows install so that it runs natively (with mono) instead of having to use wine or a derivative

# Usefulness

- Modding: Modding a windows install doesn't work, but if you make it a linux install, it will.
- Stability: Since it is run *almost* as the devs inteded it, probably its going to give a better experience.
- Performance: It runs as any linux install, instead of being slowed down by windows compatibility layers.
- Side-effects: Since this script only creates and sets up files, the game should be still able to launch under windows without issues.

This script will be most useful for people stuck on the epic games version of Celeste, since thats the only one which doesn't provide a linux version.

# Caveats

- This script doesn't support 32 bit machines.
- The save files and configuration files will be stored in the default locations for linux, that means that you may want to copy those files to the correct locations such that the games finds it. 
Its location would be: `$HOME/.local/share/Celeste/Saves`. For anything else (such as Mods), there shouldn't be any problems.

# License
See LICENSE file.

