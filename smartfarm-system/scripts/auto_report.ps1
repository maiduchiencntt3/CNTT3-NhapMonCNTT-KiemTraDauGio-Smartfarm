
$logPath = "..\data\log-he-thong.log"
$reportPath = "..\backup\bao-cao-su-co.txt"

Write-Output "BAO CAO SU CO SMARTFARM" |
    Set-Content $reportPath

Write-Output "Thoi gian: $(Get-Date)" >> $reportPath

$errors = Get-Content $logPath |
    Select-String -Pattern "CRITICAL|ERROR"

$errors | ForEach-Object { $_.Line } >> $reportPath

$count = $errors.Count

Write-Output "TONG SO SU CO: $count" >> $reportPat68
