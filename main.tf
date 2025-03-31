resource "aws_dynamodb_table" "bookinventory" {
  name     = "daisy-tf-bookinventory"
  billing_mode = "PAY_PER_REQUEST" #can scale table dynamically based on usage
# Define primary keys
  hash_key = "ISBN" # partition key"
  range_key = "Genre" # sort key

# Attribute definitions
  attribute {
    name = "ISBN"
    type = "S"
    }

  attribute {
    name = "Genre"
    type = "S"
  }

  tags = {
   #Terraform   = "true"
    Environment = "Dev"
    Name = "Book_Inventory_Table"
  }

  lifecycle {
  prevent_destroy = true #If the DynamoDB table already exists (e.g., from a previous run), 
  #Terraform might fail. Adding lifecycle rules prevents accidental recreation.
}

}