# Create S3 Buckets
resource "aws_s3_bucket" "content_bucket" {
  count = length(var.ti-content-author)
  bucket = var.ti-content-author[count.index]
}

resource "aws_s3_bucket" "author_bucket" {
  count = length(var.ti-instructor)
  bucket = var.ti-instructor[count.index]
}

resource "aws_s3_bucket" "student_bucket" {
  count = length(var.ti-student)
  bucket = var.ti-student[count.index]
}
