resource "aws_instance" "web" {
  ami             = "ami-04a81a99f5ec58529" # ubuntu
  instance_type   = "t2.micro"
  subnet_id       = var.web_subnet_id
  security_groups = [var.web_sg_id]
  user_data       = base64encode(file("userdata.sh"))

  tags = {
    Name = "WebServer"
  }
}

resource "aws_instance" "app" {
  ami             = "ami-04a81a99f5ec58529"
  instance_type   = "t2.micro"
  subnet_id       = var.app_subnet_id
  security_groups = [var.app_sg_id]
  user_data       = base64encode(file("userdata.sh"))

  tags = {
    Name = "AppServer"
  }
}

resource "aws_instance" "db" {
  ami             = "ami-04a81a99f5ec58529"
  instance_type   = "t2.micro"
  subnet_id       = var.db_subnet_id
  security_groups = [var.db_sg_id]
  user_data       = base64encode(file("userdata.sh"))

  tags = {
    Name = "DBServer"
  }
}

resource "aws_instance" "jumphost" {
  ami             = "ami-04a81a99f5ec58529"
  instance_type   = "t2.micro"
  subnet_id       = var.web_subnet_id # JumpHost in Web Subnet
  security_groups = [var.web_sg_id]
  user_data       = base64encode(file("userdata.sh"))

  tags = {
    Name = "JumpHost"
  }
}
