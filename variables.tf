variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "terraform"
}

variable "aws_access_key" {
  default = "AKIAY3K7S443AA2CCNWK"
}

variable "aws_secret_key" {
  default = "it should be a secret"
}

variable "bucket_name" {
  default = "prabha-data-lake010"
}

variable "workgroup" {
  default = "data-engineer-Q"
}

variable "database_name" {
  default = "prabha_test_db"
}

variable "glue_catalog_table" {
  default = "prabha_test_table"
}
