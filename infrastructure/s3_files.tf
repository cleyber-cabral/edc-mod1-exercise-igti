# resource "aws_s3_bucket_object" "raw-data" {
#   bucket = aws_s3_bucket.dl
#   key    = "raw-data/censo/year=2020"
#   acl    = "private"
#   source = "data/microdados_educacao_basica_2020/dados/*.csv"
#   etag   = filemd5("*.csv")
# }



resource "aws_s3_bucket_object" "job_spark" {
  bucket = aws_s3_bucket.dl.id
  key    = "emr-code/pyspark/job_spark_from_tf.py" 
  acl    = "private"
  source = "../job_spark.py"
  etag   = filemd5("../job_spark.py")
}