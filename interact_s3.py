import boto3

s3_client = boto3.client('s3')

s3_client.upload_file("DADOS/MICRODADOS_ENEM_2019.csv",
                      "datalake-igti-cleyber",
                      "data/microdados_enem_2019.csv")