variable "ti-content-author" {
  type = list(string)
  default = [
    "ti-content-author-group-data",
    "ti-content-author-group-scripts",
    "ti-content-author-group-glue-data",
    "ti-content-author-group-glue-scripts",
    "ti-content-author-group-lambda-data",
    "ti-content-author-group-lambda-scripts",
    "ti-content-author-group-athena-data",
    "ti-content-author-group-athena-scripts",
    "ti-content-author-group-crawler-data",
    "ti-content-author-group-crawler-scripts",
    "ti-content-author-group-stepfunction-data",
    "ti-content-author-group-stepfunction-scripts",
    "ti-content-author-group-s3-data",
    "ti-content-author-group-s3-scripts",
    "ti-content-author-group-batch_data",
    "ti-content-author-group-batch-scripts"
  ]
}

# Define bucket names for the author group
variable "ti-instructor" {
  type = list(string)
  default = [
    "ti-instructor-glue-data",
    "ti-instructor-glue-scripts",
    "ti-instructor-lambda-data",
    "ti-instructor-lambda-scripts",
    "ti-instructor-athena-data",
    "ti-instructor-athena-scripts",
    "ti-instructor-crawler-data",
    "ti-instructor-crawler-scripts",
    "ti-instructor-stepfunction-data",
    "ti-instructor-stepfunction-scripts",
    "ti-instructor-s3-data",
    "ti-instructor-s3-scripts",
    "ti-s3-student-batch_data",
    "ti-s3-student-batch-scripts",
    "ti-author-s3-data",
    "ti-author-s3-scripts",
    "ti-author-glue-data",
    "ti-author-glue-scripts",
    "ti-author-lambda-data",
    "ti-author-lambda-scripts",
    "ti-author-athena-data",
    "ti-author-athena-scripts",
    "ti-author-crawler-data",
    "ti-author-crawler-scripts",
    "ti-author-stepfunction-data",
    "ti-author-sstepfunction-scripts"
  ]
}

# Define bucket names for the student group
variable "ti-student" {
  type = list(string)
  default = [
    "ti-student-batch-glue-data",
    "ti-student-batch-scripts",
    "ti-student-batch-lambda-data",
    "ti-student-batch-lambda-scripts",
    "ti-student-batch-athena-data",
    "ti-student-batch-athena-scripts",
    "ti-student-batch-crawler-data",
    "ti-student-batch-crawler-scripts",
    "ti-student-batch-stepfunction-data",
    "ti-student-batch-stepfunction-scripts",
    "ti-student-batch-s3-data",
    "ti-student-batch-s3-scripts",
    "ti-instructor-glue-data",
    "ti-instructor-glue-scripts",
    "ti-instructor-lambda-data",
    "ti-instructor-lambda-scripts",
    "ti-instructor-athena-data",
    "ti-instructor-athena-scripts",
    "ti-instructor-crawler-data",
    "ti-instructor-crawler-scripts",
    "ti-instructor-stepfunction-data",
    "ti-instructor-stepfunction-scripts",
    "ti-instructor-s3-data",
    "ti-instructor-s3-scripts",
    "ti-s3-student-batch_data",
    "ti-s3-student-batch-scripts"
  ]
}