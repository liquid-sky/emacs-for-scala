SERVERS=`ps -fe | grep Emacs | grep Applications | wc -l`
if [ $SERVERS == 0 ]; then
  echo "Server not running - starting up..."
  emacsserver
fi
/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -nw -s ~/.emacs.d/server/server $*
