## GlueJob module
module "citi_cash" {
  source            = "./.terraform/modules/reference_modules/glue-job"
  GlueJobName       = var.GlueJobCitiCashJobName
  #BusUnitName       = var.GlueJobCitiCashBusUnitName
  BillingCostCenter = var.GlueJobCitiCashBillingCostCenter
  ResourceContact   = var.GlueJobCitiCashResourceContact
  AGTManaged        = var.GlueJobCitiCashAGTManaged
  Channel           = var.GlueJobCitiCashChannel
  ResourcePurpose   = var.GlueJobCitiCashResourcePurpose
  Division          = var.GlueJobCitiCashDivision
  Environment       = lookup(var.EnvironmentMap, data.aws_caller_identity.current.account_id, "dev")
  IAMRoleArn        = aws_iam_role.ETLCitiCash.arn
  GlueVersion       = var.GlueJobCitiCashVersion
  max_capacity      = var.GlueJobCitiCashMax_Capacity
  Timeout           = var.GlueJobCitiCashTimeout
  WorkerType        =var.GlueJobCitiCashWorkerType
  NumberOfWorkers   =var.GlueJobCitiCashNumberOfWorkers
  MaxRetries        =var.GlueJobCitiCashMaxRetries
  PythonVersion     =var.GlueJobCitiCashPythonVersion
  S3ScriptLocation  =join("", ["s3://", data.aws_s3_bucket_object.glue.bucket,"/",data.aws_s3_bucket_object.glue.key])
  Description       =var.GlueJobCitiCashDescription 
  
}

## Glue database module
module "citi_glue_staging_database" {
  source            = "./.terraform/modules/reference_modules/glue-database"
  GlueDatabaseName  =var.GlueStagingDatabaseCitiCashDatabaseName
}


module "citi_glue_distilled_database" {
  source            = "./.terraform/modules/reference_modules/glue-database"
  GlueDatabaseName  =var.GlueDistilledDatabaseCitiCashDatabaseName
}

module "citi_glue_publication_database" {
  source            = "./.terraform/modules/reference_modules/glue-database"
  GlueDatabaseName  =var.GluePublicationDatabaseCitiCashDatabaseName
}

module "citi_glue_export_database" {
  source            = "./.terraform/modules/reference_modules/glue-database"
  GlueDatabaseName  = var.GlueExportDatabaseCitiCashDatabaseName
}

## Creating Crawler for staging,distilled,publication and export

module "citi_glue_staging_crawler" {
  source            = "./.terraform/modules/reference_modules/glue-crawler"
  BillingCostCenter = var.GlueStagingCrawlerCitiCashBillingCostCenter
  ResourceContact   = var.GlueStagingCrawlerCitiCashResourceContact
  AGTManaged        = var.GlueStagingCrawlerCitiCashAGTManaged
  Channel           = var.GlueStagingCrawlerCitiCashChannel
  ResourcePurpose   = var.GlueStagingCrawlerCitiCashResourcePurpose
  Division          = var.GlueStagingCrawlerCitiCashDivision
  Environment       = lookup(var.EnvironmentMap, data.aws_caller_identity.current.account_id, "dev")
  GlueDatabaseName  = module.citi_glue_staging_database.Database
  GlueCrawlerName   = var.GlueStagingCrawlerCitiCashCrawlerName
  IAMRole           = aws_iam_role.ETLCitiCashCrawler.arn
  BucketLocation    = var.GlueStagingCrawlerCitiCashBucketLocation
}

module "citi_glue_distilled_crawler" {
  source            = "./.terraform/modules/reference_modules/glue-crawler"
  BillingCostCenter = var.GlueDistilledCrawlerCitiCashBillingCostCenter
  ResourceContact   = var.GlueDistilledCrawlerCitiCashResourceContact
  AGTManaged        = var.GlueDistilledCrawlerCitiCashAGTManaged
  Channel           = var.GlueDistilledCrawlerCitiCashChannel
  ResourcePurpose   = var.GlueDistilledCrawlerCitiCashResourcePurpose
  Division          = var.GlueDistilledCrawlerCitiCashDivision
  Environment       = lookup(var.EnvironmentMap, data.aws_caller_identity.current.account_id, "dev")
  GlueDatabaseName  = module.citi_glue_distilled_database.Database
  GlueCrawlerName   = var.GlueDistilledCrawlerCitiCashCrawlerName
  IAMRole           = aws_iam_role.ETLCitiCashCrawler.arn
  BucketLocation    = var.GlueDistilledCrawlerCitiCashBucketLocation
}

module "citi_glue_publication_crawler" {
  source            = "./.terraform/modules/reference_modules/glue-crawler"
  BillingCostCenter = var.GluePublicationCrawlerCitiCashBillingCostCenter
  ResourceContact   = var.GluePublicationCrawlerCitiCashResourceContact
  AGTManaged        = var.GluePublicationCrawlerCitiCashAGTManaged
  Channel           = var.GluePublicationCrawlerCitiCashChannel
  ResourcePurpose   = var.GluePublicationCrawlerCitiCashResourcePurpose
  Division          = var.GluePublicationCrawlerCitiCashDivision
  Environment       = lookup(var.EnvironmentMap, data.aws_caller_identity.current.account_id, "dev")
  GlueDatabaseName  = module.citi_glue_publication_database.Database
  GlueCrawlerName   = var.GluePublicationCrawlerCitiCashCrawlerName
  IAMRole           = aws_iam_role.ETLCitiCashCrawler.arn
  BucketLocation    = var.GluePublicationCrawlerCitiCashBucketLocation
}

module "citi_glue_export_crawler" {
  source            = "./.terraform/modules/reference_modules/glue-crawler"
  BillingCostCenter = var.GlueExportCrawlerCitiCashBillingCostCenter
  ResourceContact   = var.GlueExportCrawlerCitiCashResourceContact
  AGTManaged        = var.GlueExportCrawlerCitiCashAGTManaged
  Channel           = var.GlueExportCrawlerCitiCashChannel
  ResourcePurpose   = var.GlueExportCrawlerCitiCashResourcePurpose
  Division          = var.GlueExportCrawlerCitiCashDivision
  Environment       = lookup(var.EnvironmentMap, data.aws_caller_identity.current.account_id, "dev")
  GlueDatabaseName  = module.citi_glue_export_database.Database
  GlueCrawlerName   = var.GlueExportCrawlerCitiCashCrawlerName
  IAMRole           = aws_iam_role.ETLCitiCashCrawler.arn
  BucketLocation    = var.GlueExportCrawlerCitiCashBucketLocation
}

