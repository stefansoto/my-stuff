alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'

# Pacman alias examples
alias pacSyu='sudo pacman -Syu'		# Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacSw='pacman -Sw'		# Download specified package(s) as .tar.xz ball
alias pacS='sudo pacman -S'		# Install specific package(s) from the repositories
alias pacU='sudo pacman -U'		# Install specific package not from the repositories but from a file 
alias pacR='sudo pacman -R'		# Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacRns='sudo pacman -Rns'		# Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacSi='pacman -Si'		# Display information about a given package in the repositories
alias pacSs='pacman -Ss'		# Search for package(s) in the repositories
alias pacQi='pacman -Qi'		# Display information about a given package in the local database
alias pacQs='pacman -Qs'		# Search for package(s) in the local database
alias pacQdt="pacman -Qdt"		# List all packages which are orphaned
alias pacScc="sudo pacman -Scc"		# Clean cache - delete all the package files in the cache
alias pacq1="pacman -Ql"		# List all files installed by a given package
alias pacQo="pacman -Qo"		# Show package(s) owning the specified file(s)
alias pacexpl="pacman -D --asexp"	# Mark one or more installed packages as explicitly installed 
alias pacimpl="pacman -D --asdep"	# Mark one or more installed packages as non explicitly installed

# Stuff
alias stuff="bash ~/Scripts/stuff.bash" # output some useful stuff
# output my IP
alias whatsmyip="bash ~/Scripts/whatsmyip.bash"

#wine
alias wine_steam="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe -no-dewrite"

#steam (cause it's broken otherwise)
alias run_steam="bash ~/Scripts/steam.bash"
#alias run_civ="cd ~/.local/share/Steam/steamapps/common/Sid\ Meier\'s\ Civilization\ V/Civ5XP && bash Civ5XP"
alias run_forge="bash ~/My\ Games/memes/forge.sh"


set fish_greeting # get rid of that annoying greeting
set -x EDITOR "emacs -nw"

alias run_steam="bash ~/Scripts/steam.bash"

alias wifi_password="sudo grep -H '^psk=' /etc/NetworkManager/system-connections/*"
