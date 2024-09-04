output "beanstalk_url" {
  value = aws_elastic_beanstalk_environment.backend_beanstalk.endpoint_url
}
