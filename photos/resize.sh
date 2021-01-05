for dir in ./*; do
  echo ${dir}
  mkdir -p  "preview/${dir}"
  for i in ./${dir}/*.JPG; do
      convert "$i" -resize 20% -quality 70 "preview/${dir}/${i##*/}"
  done
  for i in ./${dir}/*.jpg; do
      convert "$i" -resize 20% -quality 70 "preview/${dir}/${i##*/}"
  done
done