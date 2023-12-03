resource "aws_lambda_function" "testfunc" {
  depends_on = [ data.archive_file.testfunc ]
  function_name    = "testfunc"
  filename         = "testfunc.zip"
  handler          = "index.lambda_handler"
  runtime          = "python3.8"

  environment {
    variables = {
      testenv = "value123"
    }
  }
  vpc_config {
    subnet_ids         = module.vpc.public_subnets
    security_group_ids = [aws_security_group.allow_all_traffic.id]
  } 
  role = "${aws_iam_role.lambda_exec.arn}"
}