# Script: tong_hop.ps1
# Tác giả: Ngô Hoàng Huy
# Ngày tạo: 11/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
Get-content logs/studio.log | Select-String "status=404" >> logs/tong_hop.txt
Get-content logs/studio.log | Select-String "status=500" | Measure-Object >> logs/tong_hop.txt
Write-Host "Hoan thanh!"
