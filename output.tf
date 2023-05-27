# output/print the eip 
output "eip_value" {
    description = "VMs Private IP"
    value= aws_instance.my-ec2.public_ip
}
