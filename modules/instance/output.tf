output "instance_ids" {
  value = [
    aws_instance.web.id,
    aws_instance.app.id,
    aws_instance.db.id,
    aws_instance.jumphost.id
  ]
}
