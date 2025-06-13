resource_groups = {
  "RG1" = {
    location = "East US"
    tags = {
      Environment = "Development"
      Project     = "MyApp"
      Owner       = "DevTeam"
      CostCenter  = "IT"
    }
  }

  "RG2" = {
    location = "West US"
    tags = {
      Environment = "Test"
      Project     = "Mytest"
      Owner       = "TestTeam"
      CostCenter  = "IT"
    }
  }

  "RG3" = {
    location = "East US"
    tags = {
      Environment = "Prod"
      Project     = "Myprod"
      Owner       = "prodTeam"
      CostCenter  = "IT"
    }
  }
}