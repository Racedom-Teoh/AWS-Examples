### auto_prompt
export AWS_CLI_AUTO_PROMPT=on-partial

### create bucket
./s3/bash-scripts/create-bucket (bucket_name)

### delete bucket
./s3/bash-scripts/delete-bucket (bucket_name)

### Permission denied
chmod -R +x ./s3/bash-scripts 
chmod u+x s3/iac/deploy

### list bucket
(top10)   ./s3/bash-scripts/list-bucket
(newest)  ./s3/bash-scripts/get-newest-bucket

### sync (random create file)
./s3/bash-scripts/sync (bucket_name) myfile-prefix

### put-object
./s3/bash-scripts/put-objects (bucket_name) /tmp/newfile.txt

### delete-objects (all)
./s3/bash-scripts/delete-objects (bucket_name)

____________________________________________________________________

## Powershell (only s3)
pwsh 

### install module
Install-AWSToolsModule AWS.Tools.S3 -CleanUp

____________________________________________________________________

## ruby 
ruby --version
bundle init  (它會自動在該資料夾下創建一個 Gemfile。這個檔案是用來列出你所需要的所有依賴庫,gems)
bundle install

____________________________________________________________________

## java 
cd java files 
read readme files

____________________________________________________________________

## cloudformation 
https://docs.aws.amazon.com/cli/latest/reference/cloudformation/

### create stack through templete.yaml
./s3/iac/cfn/deploy 

### delete stack
./s3/iac/cfn/delete-stack

____________________________________________________________________

## terraform
### check terraform
terraform
cd ./s3/iac/terraform
terraform init
terraform plan
terraform apply 
terraform destroy


### ETAG
env | grep AWS_ACCESS
env | grep AWS_SECRET
aws configure / 
export "AWS_ACCESS_KEY_ID=****" 
export "AWS_SECRET_ACCESS_KEY=*****"
export "AWS_REGION=ap-northeast-1"
aws sts get-caller-identity

terraform plan
terraform apply 
# 修改內文後etag會有變化所以可以透過這個來檢查
____________________________________________________________________

## CDK
mkdir cdk
cd cdk
cdk init sample-app --language=typescript
(change /lib/cdk.stack.ts file)
cdk bootstrap
cdk deploy
____________________________________________________________________

### Pulumi  
website ： https://www.pulumi.com/docs/iac/download-install/

curl -fsSL https://get.pulumi.com | sh (download pulumi)
. ~/.bashrc （restart）
pulumi (check all command)
pulumi new -l (check command list in new )
pulumi new aws-python 
(click link to get token and writh project name )
pulumi up 
pulumi destroy  -- check in setting in given url 
pulumi rm -s (stack name) --check in setting in given url 
____________________________________________________________________### auto_prompt
export AWS_CLI_AUTO_PROMPT=on-partial

### create bucket
./s3/bash-scripts/create-bucket (bucket_name)

### delete bucket
./s3/bash-scripts/delete-bucket (bucket_name)

### Permission denied
chmod -R +x ./s3/bash-scripts 
chmod u+x s3/iac/deploy

### list bucket
(top10)   ./s3/bash-scripts/list-bucket
(newest)  ./s3/bash-scripts/get-newest-bucket

### sync (random create file)
./s3/bash-scripts/sync (bucket_name) myfile-prefix

### put-object
./s3/bash-scripts/put-objects (bucket_name) /tmp/newfile.txt

### delete-objects (all)
./s3/bash-scripts/delete-objects (bucket_name)

____________________________________________________________________

## Powershell (only s3)
pwsh 

### install module
Install-AWSToolsModule AWS.Tools.S3 -CleanUp

____________________________________________________________________

## ruby 
ruby --version
bundle init  (它會自動在該資料夾下創建一個 Gemfile。這個檔案是用來列出你所需要的所有依賴庫,gems)
bundle install

____________________________________________________________________

## java 
cd java files 
read readme files

____________________________________________________________________

## cloudformation 
https://docs.aws.amazon.com/cli/latest/reference/cloudformation/

### create stack through templete.yaml
./s3/iac/cfn/deploy 

### delete stack
./s3/iac/cfn/delete-stack

____________________________________________________________________

## terraform
### check terraform
terraform
cd ./s3/iac/terraform
terraform init
terraform plan
terraform apply 
terraform destroy


### ETAG
env | grep AWS_ACCESS
env | grep AWS_SECRET
aws configure / 
export "AWS_ACCESS_KEY_ID=****" 
export "AWS_SECRET_ACCESS_KEY=*****"
export "AWS_REGION=ap-northeast-1"
aws sts get-caller-identity

terraform plan
terraform apply 
# 修改內文後etag會有變化所以可以透過這個來檢查
____________________________________________________________________

## CDK
mkdir cdk
cd cdk
cdk init sample-app --language=typescript
(change /lib/cdk.stack.ts file)
cdk bootstrap
cdk deploy
____________________________________________________________________

### Pulumi  
website ： https://www.pulumi.com/docs/iac/download-install/

curl -fsSL https://get.pulumi.com | sh (download pulumi)
. ~/.bashrc （restart）
pulumi (check all command)
pulumi new -l (check command list in new )
pulumi new aws-python 
(click link to get token and writh project name )
pulumi up 
pulumi destroy  -- check in setting in given url 
pulumi rm -s (stack name) --check in setting in given url 
____________________________________________________________________
