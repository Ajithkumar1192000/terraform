provider "aws" {
  region = "ap-southeast-2" Replace with your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-03f0544597f43a91d" # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
