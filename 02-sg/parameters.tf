resource "aws_ssm_parameter" "db_sg_id" {
  name  = "/${var.project_name}/${var.Environment}/db_sg_id"
  type  = "String"
  value = module.db.sg_id
}

resource "aws_ssm_parameter" "backend_sg_id" {
  name  = "/${var.project_name}/${var.Environment}/backend_sg_id"
  type  = "String"
  value = module.backend.sg_id
}

resource "aws_ssm_parameter" "frontend_sg_id" {
  name  = "/${var.project_name}/${var.Environment}/frontend_sg_id"
  type  = "String"
  value = module.frontend.sg_id
}