resource "aws_instance" "dev-server" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = [ var.ec2_sg ]
    subnet_id = var.public_subnet[0]
    lifecycle {
      create_before_destroy = true
    }
    key_name =  "${var.key_name}"

    tags = {
      env = "${var.project_name}-${var.env}_ec2"
    }
    root_block_device {
      volume_size = 20
    }
}
resource "aws_eip" "eip" {
    instance = aws_instance.dev-server.id
  
}