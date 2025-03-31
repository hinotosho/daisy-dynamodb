#insert first book item into DynamoDB
resource "aws_dynamodb_table_item" "item-one" {
table_name = aws_dynamodb_table.bookinventory.name
#hash_key = aws_dynamodb_table.bookinventory.hash_key
#range_key = aws_dynamodb_table.bookinventory.range_key
hash_key = "ISBN"
range_key = "Genre"

item = jsonencode({
  "ISBN": {"S": "978-0134685991"},
  "Genre": {"S": "Technology"},
  "Title": {"S": "Effective Java"},
  "Author": {"S": "Joshua Bloch"},
  "Stock": { "N" : "1" } #explicitly specify this as a number string
})
}

#insert second book item into DynamoDB
resource "aws_dynamodb_table_item" "item-two" {
table_name = aws_dynamodb_table.bookinventory.name
#hash_key = aws_dynamodb_table.bookinventory.hash_key
#range_key = aws_dynamodb_table.bookinventory.range_key
hash_key = "ISBN"
range_key = "Genre"

item = jsonencode({
  "ISBN": {"S": "978-0134685009"},
  "Genre": {"S": "Technology"},
  "Title": {"S": "Learning Python"},
  "Author": {"S": "Mark Lutz"}, 
  "Stock": {"N": "2"}
})
}

#insert third book item into DynamoDB
resource "aws_dynamodb_table_item" "item-three" {
table_name = aws_dynamodb_table.bookinventory.name
#hash_key = aws_dynamodb_table.bookinventory.hash_key
hash_key = "ISBN"
range_key = "Genre"

item = jsonencode({
  "ISBN": {"S": "974-0134789698"}, 
  "Genre": {"S": "Fiction"}, 
  "Title": {"S": "The Hitchhiker"}, 
  "Author": {"S": "Douglas Adams"}, 
  "Stock": {"N": "10"}
})
}

#insert fourth book item into DynamoDB
resource "aws_dynamodb_table_item" "item-four" {
table_name = aws_dynamodb_table.bookinventory.name  
#hash_key = aws_dynamodb_table.bookinventory.hash_key
hash_key = "ISBN"
range_key = "Genre"

item = jsonencode({
  "ISBN": {"S": "982-01346653457"}, 
  "Genre": {"S": "Fiction"}, 
  "Title": {"S": "Dune"}, 
  "Author": {"S": "Frank Herbert"}, 
  "Stock": {"N": "8"}
})
}

#insert fifth book item into DynamoDB
resource "aws_dynamodb_table_item" "item-five" {
table_name = aws_dynamodb_table.bookinventory.name
#hash_key = aws_dynamodb_table.bookinventory.hash_key
hash_key = "ISBN"
range_key = "Genre"

item = jsonencode({
  "ISBN": {"S": "978-01346854325"}, 
  "Genre": {"S": "Technology"}, 
  "Title": {"S": "System Design"}, 
  "Author": {"S": "Mark Lutz"}
})
}