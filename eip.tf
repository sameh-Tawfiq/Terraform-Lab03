# Configure eip resource
resource  "aws_eip" "my-eip"{
    vpc = true
}
