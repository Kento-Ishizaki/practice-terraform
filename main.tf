provider "aws" {
  profile = "terraform"
  region = "ap-northeast-1"
}

##### VPC #####
resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/21"

    tags = {
      "Name" = "main-vpc"
    }
}

##### subnet #####
resource "aws_subnet" "main_1a" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-northeast-1a"

    tags = {
        "Name" = "main_sub_1a"
    }
}

resource "aws_subnet" "main_1c" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-1c"

    tags = {
        "Name" = "main_sub_1c"
    }
}

##### EC2 #####
resource "aws_instance" "hello-world" {
    subnet_id = aws_subnet.main_1a.id
    ami = "ami-02c3627b04781eada"
    instance_type = "t2.micro"
}
