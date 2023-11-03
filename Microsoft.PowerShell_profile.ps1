<<<<<<< HEAD
function Prompt {
	$currentDir = $pwd.Path.Replace($env:USERPROFILE, "~")
	$prefix = ''
	$Host.UI.RawUI.WindowTitle = "$prefix$(Split-Path $currentDir -Leaf)"
	$prompt = '>'
	return "$currentDir $prompt "
}
=======
function Prompt {
	$currentDir = $pwd.Path.Replace($env:USERPROFILE, "~")
	$prefix = ''
	$Host.UI.RawUI.WindowTitle = "$prefix$(Split-Path $currentDir -Leaf)"
	$prompt = '>'
	return "$currentDir $prompt "
}

Set-Alias -name v -value nvim
>>>>>>> refs/remotes/origin/main
