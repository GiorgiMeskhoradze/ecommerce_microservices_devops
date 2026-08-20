resource "aws_ecr_repository" "services" {
  for_each = toset(var.repository_names)

  name = each.value
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_lifecycle_policy" "cleanup" {
  for_each = aws_ecr_repository.services

  repository = each.value.name

  policy = jsonencode({
    rules = [
        {
        rulePriority = 1
        description = "Keep last 10 images"
        selection = {
            tagStatus = "any"
            countType = "imageCountMoreThan"
            countNumber = 10
        }

        action = {
            type = "expire"
        }
      }
    ]
  })
}