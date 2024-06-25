resource "aws_lambda_function" "db_function" {
  filename         = "lambda_function_payload.zip"
  function_name    = "dbFunction"
  role             = var.lambda_exec_role_arn
  handler          = "index.handler"
  runtime          = "nodejs14.x"
  timeout          = 15

  environment {
    variables = {
      DB_HOST     = var.db_host
      DB_USER     = var.db_user
      DB_PASSWORD = var.db_password
      DB_NAME     = var.db_name
    }
  }
}
