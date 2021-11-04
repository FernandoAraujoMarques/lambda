variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "function_name" {
  default = "ec2-start"
}

variable "handler" {
  default = "lambda_handler"
}

variable "runtime" {
  default = "python3.6"
}
