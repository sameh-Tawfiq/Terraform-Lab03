# Configue the ec2 resource
resource "aws_instance" "my-ec2"{
    ami="ami-006dcf34c09e50022"
    instance_type="t2.micro"
}
