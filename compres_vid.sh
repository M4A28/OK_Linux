for i in *.mp4
do name=`echo $i | cut -d '.' -f1`;
  echo $name;
  ffmpeg -i "$i" -acodec mp2 converted/"${name}.mp4"
done
