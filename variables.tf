variable "aws_region" {
  description = "Aws Region to work on"
  default = "us-east-1"
}

variable "job_name" {
  description = "Job Name"
  default = "my_job"
}

variable "job_role" {
  description = "Job Role"
  default = "arn:aws:iam::111111111111:role/my_role"
}

variable "job_script" {
  description = "Job Script"
  default = ""
}

variable "job_script_location" {
  description = "Job Script Location"
  default = ""
}

variable "job_tmp_dir" {
  description = "Job Temporary Directory"
  default = ""
}

variable "job_bookmark_option" {
  description = "Job Bookmark Options"
  default     = "job-bookmark-disable"
}

variable "job_language" {
  description = "Job Language"
  default     = "python"
}

variable "glue_connections" {
  description = "Glue Connection"
  type        = "list"
}
