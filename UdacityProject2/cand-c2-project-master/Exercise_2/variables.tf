# TODO: Define the variable for aws_region
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Udacity Backend"
}
variable "aws_region" {
  default = "us-west-2"
}