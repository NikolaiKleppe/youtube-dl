
Param(
)


$HashTable = @{
	"SpaceAmbient"   = "PLyTVsA4ks_A4x_rEDOjr8K8F8AVOH1jw6"
	"Chill-Japanese" = "PLyTVsA4ks_A7ttSJTJBLsfe1Tj5brNJJ5"
}


ForEach ($Playlist in $HashTable.GetEnumerator()) {

	Write-Output "#################################"
	Write-Output "Starting update of playlist: $($Playlist.Name)"

	youtube-dl --download-archive "$($Playlist.Name)$('.txt')" --no-post-overwrites --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --output "C:\emby_musicshare\$($Playlist.Name)\%(title)s.%(ext)s" --yes-playlist "https://www.youtube.com/playlist?list=$($Playlist.Value)"

	Write-Output "`nFinished updating playlist"
	Write-Output "#################################`n`n`n"

}



