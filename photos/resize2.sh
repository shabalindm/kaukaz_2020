for dir in ./*; do
  echo ${dir}
  for i in ./${dir}/*.JPG; do
      convert ~/kaukaz-2020/photo-liza/${dir}/${i##*/} -resize 30% "${dir}/${i##*/}"
  done
done