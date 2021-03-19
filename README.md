# terraform-taylor-swift
Get a Taylor Swift quote for your Terraform Resources

## Usage

    module "taylor_swift" {   
	    source = "git::https://github.com/andytechdad/terraform-taylor-swift"
	}

    resource "aws_ssm_parameter" "something_important" {
        description = "Some words from Taylor Swift"
        name = "/words/taylor"
        type = "String"
        value = module.taylor_swift.words_of_taylor
    }

Tested using terraform 0.13.6

WARNING: I am not responsible for you breaking production if you use this. 
