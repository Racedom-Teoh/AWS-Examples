### auto_prompt
export AWS_CLI_AUTO_PROMPT=on-partial

### create bucket
./s3/bash-scripts/create-bucket (bucket_name)

### delete bucket
./s3/bash-scripts/delete-bucket (bucket_name)

### Permission denied
chmod -R +x ./s3/bash-scripts 

### list bucket
(top10)   ./s3/bash-scripts/list-bucket
(newest)  ./s3/bash-scripts/get-newest-bucket

### sync (random create file)
./s3/bash-scripts/sync (bucket_name) myfile-prefix

### put-object
./s3/bash-scripts/put-objects (bucket_name) /tmp/newfile.txt

### delete-objects (all)
./s3/bash-scripts/delete-objects (bucket_name)


## Powershell (only s3)
pwsh 

### install module
Install-AWSToolsModule AWS.Tools.S3 -CleanUp
