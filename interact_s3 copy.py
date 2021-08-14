import boto3

s3_client = boto3.client('s3')

s3_client.upload_file("DADOS/ITENS_PROVA_2019.csv",
                      "datalake-dev-cleyber",
                      "data/itens_PROVA_2019.csv")