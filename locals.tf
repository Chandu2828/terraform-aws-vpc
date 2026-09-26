locals {
    common_tags = {
        Project     =   var.project
        Environment =   var.environment
        Terraform   =   "true"
        Name        =   local.common_name
    }
    common_name =   "${var.project}-${var.environment}" #roboshop-dev
    az_names = slice(data.aws_availability_zones.available.names, 0, 2) # here 2 is exclusive
}

# az_names = slice(data.aws_availability_zones.available.names, 0, 2) # here 2 is exclusive
# "us-east-1a",
# "us-east-1b", 
# "us-east-1c", 
# "us-east-1d", 
# "us-east-1e", 
# "us-east-1f"
# Here it selects the first 2 AZ's. 
