resource "aws_db_instance" "postgres" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "13.4"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.postgres13"
  publicly_accessible  = false
  multi_az             = false
  auto_minor_version_upgrade = true
  storage_encrypted    = true
  skip_final_snapshot  = true
  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name

  tags = {
    Name = "PostgresDB"
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db_subnet_group"
  subnet_ids = [var.private_subnet_id]

  tags = {
    Name = "DBSubnetGroup"
  }
}
