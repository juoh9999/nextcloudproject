# main.tf
resource "aws_cloudwatch_log_group" "rds" {
  name = "/aws/rds/${var.rds_instance_id}"
  retention_in_days = 14
}

resource "aws_cloudwatch_metric_alarm" "s3_size" {
  alarm_name          = "S3-BucketSize"
  namespace           = "AWS/S3"
  metric_name         = "BucketSizeBytes"
  statistic           = "Average"
  period              = 86400
  evaluation_periods  = 1
  threshold           = 1000000000
  comparison_operator = "GreaterThanThreshold"
  dimensions = {
    BucketName = var.s3_bucket_name
    StorageType = "StandardStorage"
  }
  alarm_description = "Alarm when S3 bucket exceeds 1GB."
}

resource "aws_cloudwatch_metric_alarm" "ec2_cpu" {
  count               = length(var.ec2_instance_ids)
  alarm_name          = "High-CPU-Utilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "This metric monitors high CPU usage"
  
  dimensions = {
    InstanceId = var.ec2_instance_ids[count.index]
  }
}

