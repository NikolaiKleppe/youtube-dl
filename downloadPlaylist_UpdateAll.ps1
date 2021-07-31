
Param(
	#[Parameter(Mandatory)]
	#$Path #Path to txt file containing the archive/status
)


$HashTable = @{
	"<Name of folder/playlist>" = "<Playlist ID>"
}


ForEach ($Playlist in $HashTable.GetEnumerator()) {

	Write-Output "#################################"
	Write-Output "Starting update of playlist: $($Playlist.Name)"

	#youtube-dl --download-archive "$($Path)$($Playlist.Name)$('.txt')" --no-post-overwrites --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --output "C:\emby_musicshare\$($Playlist.Name)\%(title)s.%(ext)s" --yes-playlist "https://www.youtube.com/playlist?list=$($Playlist.Value)"
	youtube-dl --download-archive "$($Playlist.Name)$('.txt')" --no-post-overwrites --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --output "C:\emby_musicshare\$($Playlist.Name)\%(title)s.%(ext)s" --yes-playlist "https://www.youtube.com/playlist?list=$($Playlist.Value)"


	Write-Output "`nFinished updating playlist"
	Write-Output "#################################`n`n`n"

}



