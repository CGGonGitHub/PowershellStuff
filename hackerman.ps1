$CAPSABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
$lowabc = "abcdefghijklmnopqrstuvwxyz"
$global:STRING = ""
$global:RANDOM = 1
while($true) {
    $lenght = Get-Random -Minimum 8 -Maximum 25
    Write-Host $lenght
    for($i = 0; $i -ne $lenght; $i++ ){
        $caps = $true, $false | Get-Random
        $global:STRING = ""
        $global:RANDOM = Get-Random -Minimum 0 -Maximum 25
        switch($caps){
            $true {$global:string = $global:string + $CAPSABC[$global:RANDOM]}
            $false {$global:string = $global:string + $lowabc[$global:RANDOM]}

        }
    Write-Host $global:STRING -ForegroundColor Green
    }
    



}
