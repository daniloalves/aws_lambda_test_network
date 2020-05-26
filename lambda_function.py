import json
import requests

def lambda_handler(event, context):
    r = requests.get('https://api.github.com')
    return {
        'statusCode': 200,
        'body': json.dumps(f"'Github API': {r.status_code}, 'Body': {r.json()}")
    }