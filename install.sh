#! /bin/bash
# IMPORTANT: this file must be in the dotfiles local repository dir.
DFILES_DIR=$(cd -- "$(dirname "$0")" >/dev/null 2>&1; pwd -P)  # get the path to the script file.
BACKUP_DIR=$DFILES_DIR/backup                                  # here will be saved the original dotfiles.
DEST_DIR=${1:-$HOME}                                           # here will be installed the dotfiles, by default home.

# Regular Colors
BLACK=$'\033[0;30m'        # Black
RED=$'\033[0;31m'          # Red
GREEN=$'\033[0;32m'        # Green
YELLOW=$'\033[0;33m'       # Yellow
BLUE=$'\033[0;34m'         # Blue
PURPLE=$'\033[0;35m'       # Purple
CYAN=$'\033[0;36m'         # Cyan
WHITE=$'\033[0;37m'        # White

# make the backup dir.
if [ -e $BACKUP_DIR ]
then
    echo -e "${RED}the backup dir already exists, please make sure you save it somewhere else and run it again.\n$BACKUP_DIR${WHITE}"
    exit 1
fi
$(mkdir $BACKUP_DIR)

# find the dotfiles.
dotfiles=$(find $DFILES_DIR -type f -name "*" \
     -not -name README.md \
     -not -name LICENSE \
     -not -name "*.sh" \
     -not -path "$DFILES_DIR/.git/*" \
     -printf "%P\n")

# make the backup before updating the repo.
for file in $dotfiles
do
    # if the path to the file doesn't exist in the destination dir, make it.
    [ ! -e $DEST_DIR/$(dirname $file) ] && mkdir -p $DEST_DIR/$(dirname $file)

    # if the file exist in the destination dir, make a backup and delete the old one.
    if [ -e $DEST_DIR/$file ]
    then
        cp $DEST_DIR/$file $BACKUP_DIR  # backup the org file.
        rm $DEST_DIR/$file              # delete the old file.
    fi
done

# update the repo.
echo "updating the repository..."
git pull origin main
[ $? -gt 0 ] && echo "${RED}ERROR: failed to update the repository${WHITE}" && exit 1;

# create the links.
for file in $dotfiles
do
    ln -s $DFILES_DIR/$file $DEST_DIR/$file
done

# install the dependencies.
read -e -p "${PURPLE}do you want to install the dependencies? y/n: ${BLUE}" -N 1
[ "$REPLY" = "y" ] && $DFILES_DIR/dependencies.sh

echo "${GREEN}the dotfiles have been installed!${WHITE}"
