locals {
  bucket_name = "django-ecs-ecr-terraform-1"
  table_name  = "django-ecs-ecr-terraform-1"

  ecr_repo_name = "django-app-ecr-repo"

  demo_app_cluster_name        = "django-app-cluster"
  availability_zones           = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  demo_app_task_famliy         = "django-app-task"
  container_port               = 8000
  demo_app_task_name           = "django-app-task"
  ecs_task_execution_role_name = "django-app-task-execution-role"

  application_load_balancer_name = "django-app-alb"
  target_group_name              = "django-alb-tg"

  demo_app_service_name = "django-app-service"
}