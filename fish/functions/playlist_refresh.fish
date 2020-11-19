function playlist_refresh
youtube-dl -cit --title -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 "https://www.youtube.com/playlist?list=PL7GWVC87pQzzlTKFhV7L7kbiJvq5JOlff"
end
