#! /bin/bash
# IMPORTANT: this file must be in the dotfiles local repository dir.
DFILES_DIR=$(cd -- "$(dirname "$0")" >/dev/null 2>&1; pwd -P)  # get the path to the script file.
BACKUP_DIR=$DFILES_DIR/backup                                  # here will be saved the original dotfiles.
DEST_DIR=${1:-$HOME}                                           # here will be installed the dotfiles, by default home.

# make the backup dir.
if [ -e $BACKUP_DIR ]
then
    echo -e "the backup dir already exists, please make sure you save it somewhere else and run it again.\n$BACKUP_DIR"
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

for file in $dotfiles
do
    # if the path to the file doesn't exist in the destination dir, make it.
    [ ! -e $DEST_DIR/$(dirname $file) ] && mkdir -p $DEST_DIR/$(dirname $file)

    # if the file exist in the destination dir, make a backup and delete the old one.
    if [ -e $DEST_DIR/$file ]
    then
        cp $DEST_DIR/$file $BACKUP_DIR       # backup the org file.
        rm $DEST_DIR/$file                   # delete the old file.
    fi

    ln -s $DFILES_DIR/$file $DEST_DIR/$file  # link the new file.
done

echo "the dotfiles have been installed!"
