function Prompt {
	$currentDir = $pwd.Path.Replace($env:USERPROFILE, "~")
	$prefix = ''
	$Host.UI.RawUI.WindowTitle = "$prefix$(Split-Path $currentDir -Leaf)"
	$prompt = '>'
	return "$currentDir $prompt "
}
Set-PSReadLineOption -EditMode Emacs