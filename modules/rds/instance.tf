resource "aws_db_subnet_group" "this" {
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "this" {
  identifier              = var.identifier

  availability_zone       = var.availability_zone

  engine                  = var.engine
  engine_version          = var.engine_version

  instance_class          = var.instance_class
  db_subnet_group_name = aws_db_subnet_group.this.name
  vpc_security_group_ids  = var.vpc_security_group_ids
  allocated_storage       = var.allocated_storage

  db_name                 = var.db_name
  username                = var.username
  password                = var.password

  multi_az                = var.multi_az
  backup_retention_period = var.backup_retention_period
  skip_final_snapshot     = var.skip_final_snapshot
  apply_immediately       = var.apply_immediately
  deletion_protection     = var.deletion_protection
  publicly_accessible     = false
  
  tags = merge(
    {
      Name = "rds-${var.tags.Project}"
      Type = "rds"
    },
    var.tags
  )
}