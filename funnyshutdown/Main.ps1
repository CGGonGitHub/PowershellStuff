Add-Type -AssemblyName PresentationCore, PresentationFramework
$Result = [System.Windows.MessageBox]::Show('Du wurdest gehackt! Willst du jetzt runterfahren? >:)' ,'Tschau Kakao' ,'YesNo' ,'Warning')
switch($Result){
    'Yes'{shutdown -t 10 -c '*Böse Lache* Hahahhaha'}
    'No'{
        
        shutdown -t 10 -c 'Mir egal, wird jetzt trotzdem runtergefahren :)'
        }
}
