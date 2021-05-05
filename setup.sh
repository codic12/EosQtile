# NEEDS BETTER ERROR HANDLING
# AND BACKUP FILES

echo "Deletes config. Are you sure you want to do this? (yes/no)"
read x
if [ "$x" = "yes" ]
then
  echo "Presuming that all dependencies already installed..."

  rm ~/.Xresources ~/.gtkrc-2.0
  cp .Xresources ~/
  cp .gtkrc-2.0 ~/
  rm -rf ~/.config/gtk-3.0
  cp -r .config/gtk-3.0 ~/.config/
  rm -rf ~/.config/qtile
  cp -r .config/qtile ~/.config/
  
  echo 'done'
fi
