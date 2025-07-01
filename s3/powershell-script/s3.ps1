Import-Module Aws.Tools.S3 

$region = "us-east-1"
# 讓使用者輸入 AWS 區域
$region = Read-Host -Prompt 'Enter the AWS Region'

# 讓使用者輸入 S3 桶的名稱
$bucketName = Read-Host -Prompt 'Enter the S3 bucket name'

# 顯示使用者輸入的區域與桶名稱
Write-Host "AWS Region: $region"
Write-Host "S3 Bucket: $bucketName"

# 定義檢查 S3 桶是否存在的函數
function BucketExists {
    # 嘗試獲取指定名稱的 S3 桶，若無則返回 $null
    $bucket = Get-S3Bucket -BucketName $bucketName -ErrorAction SilentlyContinue
    # 如果找到桶，則返回 True，否則返回 False
    return $null -ne $bucket
}

# 如果桶不存在，則創建新桶；否則顯示桶已經存在
if (-not (BucketExists)){
    Write-Host "Bucket does not exist..."
    # 創建一個新的 S3 桶
    New-S3Bucket -BucketName $bucketName -Region $region
}else {
    Write-Host "Bucket already exists..."
}

# 設定要上傳的文件名稱與內容
$fileName = 'myfile.txt'
$fileContent = 'Hello world!'

# 將內容寫入指定的文件
Set-Content -Path $fileName -Value $fileContent

# 上傳文件到指定的 S3 桶，並使用文件名稱作為 S3 上的 Key
Write-S3Object -BucketName $bucketName -File $fileName -Key $fileName


