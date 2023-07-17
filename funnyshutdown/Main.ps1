Add-Type -AssemblyName PresentationCore, PresentationFramework
$Result = [System.Windows.MessageBox]::Show('Du wurdest gehackt! Willst du jetzt neustarten? >:)' ,'Tschau Kakao' ,'YesNo' ,'Warning')
switch($Result){
    'Yes'{shutdown - r-t 10 -c '*Böse Lache* Hahahhaha'}
    'No'{
        
        shutdown - r-t 10 -c 'Hahaha das ist mir sowasvon egal, wird jetzt trotzdem neugestartet :)'
        }
}
