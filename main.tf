resource "aws_lambda_function" "lambda_function" {
  role             = "${aws_iam_role.lambda_exec_role.arn}"
  handler          =  "lambda.handler"
  runtime          = "${var.runtime}"
  filename         = "lambda.zip"
  function_name    = "ec2-start"
  #source_code_hash = "data.archive_file.lambda_function.output_base64sha256"
  #source_code_hash = "${base64sha256(file("lambda.zip"))}"
}

resource "aws_iam_role" "lambda_exec_role" {
  name        = "lambda_exec"
  path        = "/"
  description = "Allows Lambda Function to call AWS services on your behalf."

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
