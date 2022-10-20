    resource "aws_instance" "web_app_server" {
      ami                    = data.aws_ami.amz_linux_image.id
      instance_type          = var.web_app_ec2_type
      subnet_id              = data.aws_subnet.public_subnet_2.id
      vpc_security_group_ids = [aws_security_group.web_app_sg.id]
      key_name = var.keypair_name
      user_data         = templatefile("${path.module}/user-data.sh.tpl", {
                        next_server_ip= var.server_ip_list[var.next_server_number]
                        })


      tags = {
        Name = "web-server-5"
      }
    


   

    provisioner "file" {
            source      = "~/.ssh/aws-talent-academy-group4"
            destination = "/home/ubuntu/.ssh/aws-talent-academy-group4"
    
            connection  {
              type        = "ssh"
              user        = "ubuntu"
              private_key = "${file("~/.ssh/aws-talent-academy-group4")}"
              host        = "${self.public_ip}"
            }
    }

        
  }

      
      


   resource "aws_eip_association" "eip_assoc" {
      instance_id   = aws_instance.web_app_server.id
      allocation_id = data.aws_eip.server_ip.id
  }