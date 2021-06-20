import requests

url = 'localhost:8000/api/comment/new'
payload = {"email":"alice@example.com","comment":"first post!","content_id":1}
headers = {'content-type': 'application/json', 'Accept-Charset': 'UTF-8'}
r = requests.post(url, data=payload, headers=headers)
