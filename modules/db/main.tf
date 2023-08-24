
resource "aws_db_instance" "Mybd" {
  allocated_storage    = 20
  storage_type        = "gp2"
  engine              = "postgres"
  engine_version      = "13.4"
  instance_class      = "db.t2.micro"
  name                = "mydb"
  username            = "myuser"
  password            = "mypassword"
  parameter_group_name = "default.postgres13"
  
  skip_final_snapshot = true

  tags = {
    Name = "MyDatabase"
  }
}
