# Create a new load balancer
resource "aws_elb" "bar" {
  name               = "wordpress"
  subnets            =["${data.terraform_remote_state.dev.Subnet1}", 
                       "${data.terraform_remote_state.dev.Subnet2}", 
                       "${data.terraform_remote_state.dev.Subnet3}",
                              ]
  
 

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  
  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  instances                   = ["i-0ec59fb0ba2070b9a"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "foobar-terraform-elb"
  }
}


# Create a new load balancer attachment
resource "aws_autoscaling_attachment" "wordpress" {
  autoscaling_group_name = "wordpress-asg-20200314211845565900000002"
  elb                    = "wordpress"
}