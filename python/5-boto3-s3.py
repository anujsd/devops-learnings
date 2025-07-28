import boto3

s3 = boto3.client("s3")


# # List buckets
# s3_list = s3.list_buckets()

# for bkt in s3_list["Buckets"]:
#     print(bkt['Name'])


# # Upload file

# res = s3.upload_file("upload/data.json","elasticbeanstalk-us-east-1-047339594014","upload.json")
# print(res)

# # Download file

# s3.download_file("elasticbeanstalk-us-east-1-047339594014","newfile.json","f.json")

# Generate pre signed url

res = s3.generate_presigned_url(
    "get_object",
    Params={"Bucket": "elasticbeanstalk-us-east-1-047339594014", "Key": "newfile.json"},
    ExpiresIn=1000
)

print(res)