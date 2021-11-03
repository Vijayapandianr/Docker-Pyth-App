##CommonVariables##
variable "EnvironmentMap" {}

#gluejob variables for northerntrust
variable "GlueJobCitiCashBillingCostCenter" {}
variable "GlueJobCitiCashResourceContact"  {}
variable "GlueJobCitiCashAGTManaged" {}
variable "GlueJobCitiCashChannel" {}
variable "GlueJobCitiCashResourcePurpose" {}
variable "GlueJobCitiCashDivision" {}
variable "GlueJobCitiCashBusUnitName" {}
variable "GlueJobCitiCashDescription" {}


variable "GlueJobCitiCashVersion"  {}            
variable "GlueJobCitiCashMax_Capacity" {}            
variable "GlueJobCitiCashTimeout" {}         
variable "GlueJobCitiCashWorkerType" {}            
variable "GlueJobCitiCashNumberOfWorkers" {}
variable "GlueJobCitiCashMaxRetries" {}      
variable "GlueJobCitiCashPythonVersion" {}          
variable "GlueJobCitiCashJobName" {}
variable "GlueJobCitiCash_S3ScriptLocation" {}



#Crawlers 

#glue Staging
variable "GlueStagingCrawlerCitiCashBillingCostCenter" {}
variable "GlueStagingCrawlerCitiCashResourceContact" {}
variable "GlueStagingCrawlerCitiCashAGTManaged" {}
variable "GlueStagingCrawlerCitiCashChannel" {} 
variable "GlueStagingCrawlerCitiCashResourcePurpose" {}
variable "GlueStagingCrawlerCitiCashDivision" {}
variable "GlueStagingCrawlerCitiCashDescription" {}
variable "GlueStagingCrawlerCitiCashBusUnitName" {}
variable "GlueStagingCrawlerCitiCashBucketLocation" {}
variable "GlueStagingCrawlerCitiCashCrawlerName" {}

#database Staging
variable  "GlueStagingDatabaseCitiCashDatabaseName" {}

#glue Distilled
variable "GlueDistilledCrawlerCitiCashBillingCostCenter" {}
variable "GlueDistilledCrawlerCitiCashResourceContact" {}
variable "GlueDistilledCrawlerCitiCashAGTManaged" {}
variable "GlueDistilledCrawlerCitiCashChannel" {} 
variable "GlueDistilledCrawlerCitiCashResourcePurpose" {}
variable "GlueDistilledCrawlerCitiCashDivision" {}
variable "GlueDistilledCrawlerCitiCashDescription" {}
variable "GlueDistilledCrawlerCitiCashBusUnitName" {}
variable "GlueDistilledCrawlerCitiCashBucketLocation" {}
variable "GlueDistilledCrawlerCitiCashCrawlerName" {}

#database Distilled
variable  "GlueDistilledDatabaseCitiCashDatabaseName" {}

# glue Publication
variable "GluePublicationCrawlerCitiCashBillingCostCenter" {}
variable "GluePublicationCrawlerCitiCashResourceContact" {}
variable "GluePublicationCrawlerCitiCashAGTManaged" {}
variable "GluePublicationCrawlerCitiCashChannel" {} 
variable "GluePublicationCrawlerCitiCashResourcePurpose" {}
variable "GluePublicationCrawlerCitiCashDivision" {}
variable "GluePublicationCrawlerCitiCashDescription" {}
variable "GluePublicationCrawlerCitiCashBusUnitName" {}
variable "GluePublicationCrawlerCitiCashBucketLocation" {}
variable "GluePublicationCrawlerCitiCashCrawlerName" {}

#database Publication
variable  "GluePublicationDatabaseCitiCashDatabaseName" {}

# glue export 
variable "GlueExportCrawlerCitiCashBillingCostCenter" {}
variable "GlueExportCrawlerCitiCashResourceContact" {}
variable "GlueExportCrawlerCitiCashAGTManaged" {}
variable "GlueExportCrawlerCitiCashChannel" {} 
variable "GlueExportCrawlerCitiCashResourcePurpose" {}
variable "GlueExportCrawlerCitiCashDivision" {}
variable "GlueExportCrawlerCitiCashDescription" {}
variable "GlueExportCrawlerCitiCashBusUnitName" {}
variable "GlueExportCrawlerCitiCashBucketLocation" {}
variable "GlueExportCrawlerCitiCashCrawlerName" {}

#database Export
variable  "GlueExportDatabaseCitiCashDatabaseName" {}

#gluepolicy
variable "GlueAssumeRoleActionList" {}
variable "GlueAssumeRoleEffect" {}
variable "GlueAssumeRolePrincipal" {}
variable "GluePrincipalType" {}

#s3 bucket location
variable "GlueJobCitiCashS3BucketLocation" {}
variable "GlueJobCitiCashS3Key" {}

# script target location
variable "GlueCitiScriptTargetDirectory" {} 