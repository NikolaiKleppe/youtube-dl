
# Doc/Examples/links


## List available formats:
youtube-dl.exe -F https://www.youtube.com/watch?v=8Z1eMy2FoX4

</br>

## Download selected:
youtube-dl -f 313+23 https://www.youtube.com/watch?v=8Z1eMy2FoX4

(Combine video + audio..)

</br>

## Download audio: (best quality)
youtube-dl --format bestaudio --audio-format mp3 --extract-audio --audio-quality 0


</br>

## Download channel:

youtube-dl -f 140 -ciw -o "C:\youtubedl\Youtubedl_downloads\%(title)s.%(ext)s" -v https://www.youtube.com/channel/UC5Ce1XGat0JJOXcFWZl1jcg

https://askubuntu.com/questions/856911/using-youtube-dl-to-download-entire-youtube-channel


Re-download:
https://askubuntu.com/questions/673442/downloading-youtube-playlist-with-youtube-dl-skipping-existing-files



