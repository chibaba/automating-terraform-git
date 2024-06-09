# AWS security group configurations

resource "aws_security_group" "security_group" {
    name = var.sg_name
    description = var.sg_description

    tag = {
        "Environment" = var.Environment
    }
}

resource "aws_security_group_rule" "security_group_rule" {
    type = var.type
    from_port = var.from_port
    to_port = var.to_port
    protocol = var.protocol
    cidr_blocks = var.cidr_blocks
    security_group_id = aws_security_group.security_group.id
}