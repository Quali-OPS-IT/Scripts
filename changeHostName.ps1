$TokenSet = @{
        U = [Char[]]'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'        
    }

$StringSet = Get-Random -Count 6 -InputObject $TokenSet.U
$StringSet = 'DO-VM-' + $StringSet

Write-Host $StringSet

$StringSet = $StringSet -replace " ",""

Write-Host $StringSet

Rename-Computer -NewName  $StringSet







