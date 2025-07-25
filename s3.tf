resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket         = "dibya-codepipeline-artifacts-2025" # must be globally unique
  force_destroy  = true

  tags = {
    Name        = "CodePipeline Artifacts Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "codepipeline_artifacts_versioning" {
  bucket = aws_s3_bucket.codepipeline_artifacts.id

  versioning_configuration {
    status = "Enabled"
  }
}
