mkdir resized
for i in ./*.JPG; do
    convert "$i" -resize 20% "resized/${i##*/}"
done