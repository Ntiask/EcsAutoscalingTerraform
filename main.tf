/*-------------Autoscaling:----------------
# ------- Creating ECS Service server -------
# ------- Creating ECS Service client -------
# ------- Creating ECS Autoscaling policies for the server application -------

module "ecs_autoscaling_server" {
  depends_on   = [module.ecs_service_server]
  source       = "./Modules/Autoscaling"
  name         = "${var.environment_name}-server"
  cluster_name = module.ecs_cluster.ecs_cluster_name
  min_capacity = 1
  max_capacity = 4
}

