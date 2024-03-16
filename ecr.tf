provider "aws" {
  region = "us-east-2"  # Replace with your desired AWS region
}

resource "aws_ecr_repository" "my_repository" {
  name = "kurmanbek"  # Set the repository name to "kurmanbek"

  # Enable image tag immutability
  image_tag_mutability = "IMMUTABLE"

  # Optional: Additional settings
  # image_scanning_configuration {
  #   scan_on_push = true
  # }
  # encryption_configuration {
  #   encryption_type = "AES256"
  # }
}

output "repository_url" {
  value = aws_ecr_repository.my_repository.repository_url
}
