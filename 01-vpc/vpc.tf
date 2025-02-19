module "vpc" {
    source = "git::https://github.com/PreethiRatnala/terraform_aws_vpc.git?ref=main"
    common_tags = var.common_tags
    project_name = var.project_name
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = var.is_peering_required
}