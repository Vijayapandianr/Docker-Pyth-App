##GetAWSAccountNumber##
data "aws_caller_identity" "current" {}

##GetAWSRegion##
data "aws_region" "current" {}

data "aws_s3_bucket_object" "glue" {
  bucket     = join("", [var.GlueJobCitiCashBusUnitName, "-s3-", lookup(var.EnvironmentMap, data.aws_caller_identity.current.account_id, "dev"), "-", var.GlueJobCitiCashS3BucketLocation])
  key        = var.GlueJobCitiCashS3Key
  depends_on = [module.UploadCopyFilesLambdaPackageToS3]
}