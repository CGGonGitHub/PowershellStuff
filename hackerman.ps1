$CAPSABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
$lowabc = "abcdefghijklmnopqrstuvwxyz"
$numbers = "1234567890"
$global:STRING = ""
$global:RANDOM = 1
$global:SPEED = 2500
while($true) {
    $lenght = Get-Random -Minimum 8 -Maximum 75
    $global:STRING = ""
    for($i = 0; $i -ne $lenght; $i++ ){
        $type = "uppercase", "lowercase", "number" | Get-Random
        #$global:RANDOM = Get-Random -Minimum 0 -Maximum 25
        switch($type){
            "uppercase" {$global:RANDOM = Get-Random -Minimum 0 -Maximum 25; $global:STRING = $global:STRING + $CAPSABC[$global:RANDOM]}
            "lowercase" {$global:RANDOM = Get-Random -Minimum 0 -Maximum 25; $global:STRING = $global:STRING + $lowabc[$global:RANDOM]}
            "number" {$global:RANDOM = Get-Random -Minimum 0 -Maximum 8; $global:STRING = $global:STRING + $numbers[$global:RANDOM]}
        }
    }
    Start-Sleep -Milliseconds $global:SPEED
    if($global:SPEED -ne 0){
    $global:SPEED = $global:SPEED - 100
    }
    Write-Host $global:STRING -ForegroundColor Green
}
