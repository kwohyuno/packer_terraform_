data "aws_iam_policy_document" "bastion_assume_role" {
  statement {
    actions   = ["sts:AssumeRole"]
    effect    = "Allow"
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "bastion_role" {
  name               = "bastion_role"
  assume_role_policy = data.aws_iam_policy_document.bastion_assume_role.json
  tags = {
    Environment = "dev"
    Project     = "my-terraform"
  }
}

resource "aws_iam_instance_profile" "bastion_profile" {
  name = "bastion_profile"
  role = aws_iam_role.bastion_role.name
}

data "aws_iam_policy_document" "bastion_policy" {
  statement {
    effect = "Allow"
    actions = [
      "ec2:DescribeInstances",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeVpcs",
      "ssm:DescribeAssociation",
      "ssm:GetDocument"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "bastion_role_policy" {
  name   = "bastion_role_policy"
  role   = aws_iam_role.bastion_role.id
  policy = data.aws_iam_policy_document.bastion_policy.json
}
