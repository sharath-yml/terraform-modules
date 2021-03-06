variable "identifier"                   {}
variable "storage"                      {}
variable "storage_type"                 {default = "gp2"}
variable "engine"                       {default = "mysql" description = "DB Engine type, example values mysql, postgres"}
variable "engine_version"               {description = "Engine version"}
variable "instance_class"               {description = "Instance class"}
variable "db_name"                      {description = "Database name"}
variable "username"                     {description = "User name"}
variable "password"                     {description = "Password for the database"}
variable "multi_az"                     {default = "false"}
variable "apply_immediately"            {}
variable "vpc_id"                       {}
variable "database_port"                {}
variable "allow_inbound_ec2_sg"         {type = "list"}
variable "db_subnet_group_name"         {}
variable "rds_subnet_ids"               {type = "list"}
variable "db_sg_name"                   {}
variable "rds_publicly_accessible"      {}
variable "rds_storage_encrypted"        {}
variable "option_group_name"            {}
variable "parameter_group_name"         {}
variable "backup_retention_period"      {}
variable "kms_key_id"                   {}
variable "alarm_connections_threshold"  {default = "60"}
variable "alarm_cpu_threshold"          {default = "70"}
variable "alarm_free_disk_threshold"    {default = "5000000000"}
variable "alarm_free_memory_threshold"  {default = "128000000"}
variable "sns_topic_arn"                {}
