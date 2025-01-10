resource "aws_elasticsearch_domain" "this" {
  domain_name           = var.domain_name
  elasticsearch_version = var.elasticsearch_version

  cluster_config {
    instance_type = var.instance_type
  }

  ebs_options {
    ebs_enabled = true
    volume_size = var.volume_size
  }

  tags = var.tags
}
