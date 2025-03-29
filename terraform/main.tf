resource "aws_instance" "auto_instance" {
  ami           = "ami-0e35ddab05955cf57"  
  instance_type = "t2.micro"
  key_name      = "anuhpec2"                   
  tags = {
    Name = "auto_instance"
  }
}


resource "aws_s3_bucket" "auto_bucket" {
  bucket = "ahp-auto-bucket"
  lifecycle {
    ignore_changes = [bucket]
  }
}
