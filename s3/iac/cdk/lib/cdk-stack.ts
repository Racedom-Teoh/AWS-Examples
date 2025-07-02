import { Stack, StackProps } from 'aws-cdk-lib';  // 引入 Stack 和 StackProps
import * as s3 from 'aws-cdk-lib/aws-s3';         // 引入 S3 模組
import { Construct } from 'constructs';           // 引入 Construct 類

export class CdkStack extends Stack {
  constructor(scope: Construct, id: string, props?: StackProps) {
    super(scope, id, props);

    // 確保 S3 桶被正確地放在 Stack 內
    new s3.Bucket(this, 'MYBucket');  // 使用 `this` 來表示 `Stack` 範圍
  }
}
