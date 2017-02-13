# SSL-MA Test

### Details

This project is to test SSL-MA connection between two servers. This repo has both sending and receiving functions listed below:

- Send GET calls with SSL-MA (and receive JSON as response)
- Send POST calls with SSL-MA (and receive JSON as response)
- Accept GET calls with SSL-MA (One endpoint returns JSON and another returns a BLOB)
- Accept POST calls with SSL-MA (and return JSON)

### Instructions
1) Run two instances of this server
```
rails s -p 8080
rails s -p 8081 -P 11111
```

2) Use postman and send a get request to /send_data. You can use the following options:
```
# Send GET JSON
{
  "url": "http://localhost:8081/api/receive_get_json",
  "step": "1a"
}

# Send GET BLOB
{
  "url": "http://localhost:8081/api/receive_post_json",
  "step": "1b"
}

# Send POST JSON
{
  "url": "http://localhost:8081/api/receive_post_json",
  "step": "2"
}
```

3) Verify responses