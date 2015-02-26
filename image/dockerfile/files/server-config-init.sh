#arg1:orgin system config file
#arg2:config file in volume
if [ -z "$2" ];then
 exit 1;
fi
originConfigPath=$1
suffix=.origin
backfile=$originConfigPath$suffix
newConfigPath=$2
if [ ! -L $originConfigPath ];then
  if [ -f $backfile ];then
    rm "$backfile" -rf
  fi
  if [ -e $backfile ];then
    echo "Can't rm backup file $backfile"
    exit 1;
  fi
  if [ -e $originConfigPath ];then
    mv "$originConfigPath" "$backfile"
  fi
  if [ -e $originConfigPath ];then
    echo "Can't mv origin config file $originConfigPath"
    exit 1;
  fi
else
  unlink $originConfigPath
fi
ln -s "$newConfigPath" "$originConfigPath"
exit 0
