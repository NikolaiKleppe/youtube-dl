
Param(
	[Parameter(Mandatory)]
	$PlaylistID,
	
	[Parameter(Mandatory)]
	$Folder #Folder to save mp3 files to

)

youtube-dl --download-archive "$($PlaylistID)$('.txt')" --no-post-overwrites --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --output "C:\emby_musicshare\$Folder\%(title)s.%(ext)s" --yes-playlist "https://www.youtube.com/playlist?list=$($PlaylistID)"
