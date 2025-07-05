# Create website 1

## Create a bucket
aws s3 mb s3://cors-fun-ab-20240705


## Change block public access
aws s3api put-public-access-block \
    --bucket cors-fun-ab-20240705 \
    --public-access-block-configuration '{
        "IgnorePublicAcls": true,
        "BlockPublicPolicy": false,
        "BlockPublicAcls": true,
        "RestrictPublicBuckets": false
    }'


## Create a bucket policy

aws s3api put-bucket-policy --bucket cors-fun-ab-20240705 --policy file://bucket-policy.json


## Turn on static website hosting

aws s3api put-bucket-website --bucket cors-fun-ab-20240705 --website-configuration file://website.json


## Upload our index.html file and include a resourcs that would be cross-origin

aws s3 cp index.html s3://cors-fun-ab-20240705


## Get the bucket website
aws s3api get-bucket-website --bucket cors-fun-ab-20240705 

aws s3api get-bucket-location --bucket cors-fun-ab-20240705 --query "LocationConstraint" --output text | xargs -I {} echo "http://cors-fun-ab-20240705.s3-website-{}.amazonaws.com"

## View the website
http://cors-fun-ab-20240705.s3-website-ap-northeast-1.amazonaws.com

## Change font and css and upload

aws s3 cp index.html s3://cors-fun-ab-20240705


# Create website 2

## Create a bucket
aws s3 mb s3://cors-fun2-ab-20240705

## Change block public access
aws s3api put-public-access-block \
    --bucket cors-fun2-ab-20240705 \
    --public-access-block-configuration '{
        "IgnorePublicAcls": true,
        "BlockPublicPolicy": false,
        "BlockPublicAcls": true,
        "RestrictPublicBuckets": false
    }'


## Create a bucket policy

aws s3api put-bucket-policy --bucket cors-fun2-ab-20240705 --policy file://bucket-policy2.json


## Turn on static website hosting

aws s3api put-bucket-website --bucket cors-fun2-ab-20240705 --website-configuration file://website2.json


## Upload our json file and include a resourcs that would be cross-origin

aws s3 cp hello.js s3://cors-fun2-ab-20240705


## Get the bucket website
aws s3api get-bucket-website --bucket cors-fun2-ab-20240705 

aws s3api get-bucket-location --bucket cors-fun2-ab-20240705 --query "LocationConstraint" --output text | xargs -I {} echo "http://cors-fun2-ab-20240705.s3-website-{}.amazonaws.com"

## Create API Gateway with mock response and then test the endpoint
https://fhkef3id47.execute-api.ap-northeast-1.amazonaws.com/prod

curl -X POST https://fhkef3id47.execute-api.ap-northeast-1.amazonaws.com/prod/hello \
     -H "Content-Type: application/json" \

## Set Cores on our bucket

aws s3api put-bucket-cors --bucket cors-fun-ab-20240705 --cors-configuration file://cors.json
