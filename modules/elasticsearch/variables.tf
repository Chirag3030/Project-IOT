variable "domain_name" {
  description = "The name of the Elasticsearch domain"
  type        = string
}

variable "elasticsearch_version" {
  description = "The version of Elasticsearch"
  type        = string
}

variable "instance_type" {
  description = "The instance type for Elasticsearch nodes"
  type        = string
}

variable "volume_size" {
  description = "The size of the EBS volumes for Elasticsearch nodes"
  type        = number
}

variable "tags" {
  description = "Tags for the Elasticsearch domain"
  type        = map(string)
}
