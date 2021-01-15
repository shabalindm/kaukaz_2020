for dir in ./*; do
 echo ${dir}
  for i in ./${dir}/*.JPG; do
    FILESIZE=$(stat -c%s ${dir}/${i##*/})
    if [ $FILESIZE -gt  2000000  ]; then
     echo "Size of $FILENAME = $FILESIZE bytes."
     convert ${dir}/${i##*/} -resize 50% "${dir}/${i##*/}"
    fi

  done
done