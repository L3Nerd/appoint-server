# APPOINT-Server
## API
### `GET /appointments`
Normal response codes: `200`
Error response codes: `4xx`

**Response example**
```json
{
  "appointments": [{
    "id":"1",
    "name":"Grillen am Strand",
    "description":"Wollen demnächst mal am Strand grillen.",
    "creator": "Olli",
    "created": "2016-06-08T14:56:29.000Z",
    "updated": "2016-06-08T14:56:29.000Z",
    "dates":[
      {
        "date": "2016-06-10",
        "votes": "6"
      },
      {
        "date": "2016-06-17",
        "votes": "4"
      }
    ]
  },
  {
    "id":"2",
    "name":"Bowling",
    "description":"Bowling am Mittwoch.",
    "creator": "Lennart",   
    "created": "2016-06-08T14:56:29.000Z",
    "updated": "2016-06-08T14:56:29.000Z",
    "dates":[
      {
        "date": "2016-06-15",
        "votes": "1"
      },
      {
        "date": "2016-06-22",
        "votes": "8"
      },
    ]
  }]
}
```
