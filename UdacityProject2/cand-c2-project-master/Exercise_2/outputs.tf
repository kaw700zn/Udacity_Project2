# TODO: Define the output variable for the lambda function.
output "lambda_arn" {
  value       = aws_lambda_function.test_lambda.arn
  description = "The created lambda function arn"
}