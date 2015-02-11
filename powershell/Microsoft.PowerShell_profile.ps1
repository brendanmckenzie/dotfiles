Import-Module posh-git

$GitPromptSettings.BeforeText = " [ branch: "
$GitPromptSettings.AfterText = " ] "
$GitPromptSettings.BranchBackgroundColor = [ConsoleColor]::Gray
$GitPromptSettings.BranchForegroundColor = [ConsoleColor]::Red
$GitPromptSettings.BeforeForegroundColor = [ConsoleColor]::Black
$GitPromptSettings.BeforeBackgroundColor = [ConsoleColor]::Gray
$GitPromptSettings.AfterBackgroundColor = [ConsoleColor]::Gray
$GitPromptSettings.AfterForegroundColor = [ConsoleColor]::Black
$GitPromptSettings.BranchAheadBackgroundColor = [ConsoleColor]::White
$GitPromptSettings.BranchAheadForegroundColor = [ConsoleColor]::Black

$GitPromptSettings.RepositoriesInWhichToDisableFileStatus = "C:\users\brendan.mckenzie\Projects\HardieGrant"

function Prompt() {
	$loc = $(Get-Location).Path.Split('\\')
	$dir = $loc[$loc.Length - 1]
	if ($dir.Equals("")) {
		$dir = $loc[0] + "\"
	}
	Write-Host "[ " -NoNewLine -ForegroundColor Green
	Write-Host $dir -NoNewLine -ForegroundColor White
	Write-Host " ]" -NoNewLine -ForegroundColor Green
	Write-VcsStatus
	Write-Host " ~" -NoNewLine -ForegroundColor Red
	return " "
}

Set-Location C:\users\brendan.mckenzie

Clear-Host

Write-Host "Starting SSH agent..."
Start-SshAgent -Quiet

Set-Alias subl "C:\Program Files\Sublime Text 3\sublime_text.exe"
Set-Alias vi "C:\Users\brendan.mckenzie\Applications\vim74\gvim.exe"
Set-Alias vim "C:\Users\brendan.mckenzie\Applications\vim74\gvim.exe"

function which($cmd) {
    Get-Command $cmd | Select Path, Name
}

Clear-Host
