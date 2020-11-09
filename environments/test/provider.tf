provider "aws" {
  #  alias      =  "profile"
  region                  = "eu-west-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "pro"
}
