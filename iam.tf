# Create IAM Groups
resource "aws_iam_group" "content_group" {
  name = "ti-content-author"
}

resource "aws_iam_group" "author_group" {
  name = "ti-instructor"
}

resource "aws_iam_group" "student_group" {
  name = "ti-student"
}

# Create IAM Policies for content group
resource "aws_iam_policy" "ti-content-author_full_access_policy" {
  count       = length(var.ti-content-author)
  name        = "content_full_access_policy_${count.index}"
  description = "Policy for full access to S3 bucket ${var.ti-content-author[count.index]}"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "s3:*"
        Resource = "arn:aws:s3:::${var.ti-content-author[count.index]}/*"
      }
    ]
  })
}

resource "aws_iam_policy" "ti-content-author_read_only_policy" {
  count       = length(var.ti-content-author)
  name        = "content_read_only_policy_${count.index}"
  description = "Policy for read-only access to S3 bucket ${var.ti-content-author[count.index]}"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Resource = "arn:aws:s3:::${var.ti-content-author[count.index]}/*"
      }
    ]
  })
}

# Create IAM Policies for author group
resource "aws_iam_policy" "ti-instructor_full_access_policy" {
  count       = length(var.ti-instructor)
  name        = "author_full_access_policy_${count.index}"
  description = "Policy for full access to S3 bucket ${var.ti-instructor[count.index]}"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "s3:*"
        Resource = "arn:aws:s3:::${var.ti-instructor[count.index]}/*"
      }
    ]
  })
}

resource "aws_iam_policy" "author_read_only_policy" {
  count       = length(var.ti-instructor)
  name        = "author_read_only_policy_${count.index}"
  description = "Policy for read-only access to S3 bucket ${var.ti-instructor[count.index]}"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Resource = "arn:aws:s3:::${var.ti-instructor[count.index]}/*"
      }
    ]
  })
}

# Create IAM Policies for student group
resource "aws_iam_policy" "ti-student_full_access_policy" {
  count       = length(var.ti-student)
  name        = "student_full_access_policy_${count.index}"
  description = "Policy for full access to S3 bucket ${var.ti-student[count.index]}"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "s3:*"
        Resource = "arn:aws:s3:::${var.ti-student[count.index]}/*"
      }
    ]
  })
}

resource "aws_iam_policy" "student_read_only_policy" {
  count       = length(var.ti-student)
  name        = "student_read_only_policy_${count.index}"
  description = "Policy for read-only access to S3 bucket ${var.ti-student[count.index]}"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Resource = "arn:aws:s3:::${var.ti-student[count.index]}/*"
      }
    ]
  })
}

# Attach Policies to IAM Groups
resource "aws_iam_group_policy_attachment" "content_full_access_attachment" {
  count       = length(var.ti-content-author)
  group       = aws_iam_group.content_group.name
  policy_arn  = aws_iam_policy.content_full_access_policy[count.index].arn
}

resource "aws_iam_group_policy_attachment" "content_read_only_attachment" {
  count       = length(var.ti-content-author)
  group       = aws_iam_group.content_group.name
  policy_arn  = aws_iam_policy.content_read_only_policy[count.index].arn
}

resource "aws_iam_group_policy_attachment" "author_full_access_attachment" {
  count       = length(var.ti-instructor)
  group       = aws_iam_group.author_group.name
  policy_arn  = aws_iam_policy.author_full_access_policy[count.index].arn
}

resource "aws_iam_group_policy_attachment" "author_read_only_attachment" {
  count       = length(var.ti-instructor)
  group       = aws_iam_group.author_group.name
  policy_arn  = aws_iam_policy.author_read_only_policy[count.index].arn
}

resource "aws_iam_group_policy_attachment" "student_full_access_attachment" {
  count       = length(var.ti-student)
  group       = aws_iam_group.student_group.name
  policy_arn  = aws_iam_policy.student_full_access_policy[count.index].arn
}

resource "aws_iam_group_policy_attachment" "student_read_only_attachment" {
  count       = length(var.ti-student)
  group       = aws_iam_group.student_group.name
  policy_arn  = aws_iam_policy.student_read_only_policy[count.index].arn
}