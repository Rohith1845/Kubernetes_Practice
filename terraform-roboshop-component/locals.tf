locals {
    ami_id = data.aws_ami.rohithdevops.id
    common_suffix_name = "${var.project_name}-${var.environment}"
    sg_id = data.aws_ssm_parameter.sg_id.value
    private_subnet_id = split("," , data.aws_ssm_parameter.private_subnet_id.value)[0]
    private_subnet_ids = spilt("," , data.aws_ssm_parameter.private_subnet_id.value)
    tg_port = "${var.component}" == "frontend" ? 80 : 8080
    health_check_path = "${var.component}" == "frontend" ? "/" : "/health"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    backend_alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
    frontend_alb_listener_arn = data.aws_ssm_parameter.frontend_alb_listener_arn.value
    listener_arn = "${var.component}" == "frontend" ? local.frontend_alb_listener_arn : local.backend_alb_listener_arn
    host_context = "${var.component}" == "frontend" ? "${var.project_name}-${var.environment}-${var.domain_name}" : "${var.component}.backend-alb-${var.environment}.${var.domain_name}"
    common_tags = {
        Project = var.project_name
        Environment = var.environment
        terraform = true
    }
}