resource "null_resource" "job" {
  provisioner "local-exec" {
    when    = "create"
    command = "touch ${path.module}/scripts/create.lock"
  }

  provisioner "local-exec" {
    when    = "destroy"
    command = "python ${path.module}/scripts/destroy.py ${var.job_name} ${var.aws_region}"
  }
}
