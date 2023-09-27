resource "aws_instance" "ec2" {
  ami = "ami-00902ee7c6851e604"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.ingress-all-test.id}"]
  key_name = aws_key_pair.ssh_key.key_name

  user_data = file("templates/ubuntu.sh")
  
  tags = {
    name = "HelloWorld"
  }

  subnet_id = "${aws_subnet.subnet-uno.id}"
}
resource "aws_dynamodb_table" "tfstate_lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}