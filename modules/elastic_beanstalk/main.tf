resource "aws_elastic_beanstalk_application" "my_app" {
  name        = "my-app"
  description = "My application"
}

resource "aws_elastic_beanstalk_environment" "backend_beanstalk" {
  name                = "my-app-env"
  application         = aws_elastic_beanstalk_application.my_app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.4.10 running Node.js 14"

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = "SingleInstance"
  }

  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "NODE_ENV"
    value     = "production"
  }
}
