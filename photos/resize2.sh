#for dir in ./*; do
#  echo ${dir}
  for i in ./13/*.JPG; do
      convert ~/kaukaz-2020/photo-liza/13/${i##*/} -resize 30% "13/${i##*/}"
  done
#done