import json

def lambda_handler(event, context):
    # Your logic here
    print("Hello, World!")
    
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
