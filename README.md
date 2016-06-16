# APPOINT-Server

## API

### `POST /appointments`

**Creates an appointment.**

Normal response codes: `201`
Error response codes: `4xx`

**Request example**
```json
{
  "title":"Grillen am Strand",
  "description":"Wollen demnächst mal am Strand grillen.",
  "dates": [ {"date":"2016-02-03"}, {"date": "2016-06-08T14:56:29.000Z"} ]
}
```

**Response example**
```json
{
  "id":4,
  "title":"nicht so toller tag Toller Tag",
  "description":"Das wird ein soooo toller tag, nur wann?",
  "auth_token":"c51f548b3db84f56a1a200e7dd3b1e0d",
  "created_at":"2016-06-16T11:30:29.940Z",
  "updated_at":"2016-06-16T11:30:29.940Z",
  "dates": [ 
    { "id": 1,
      "date":"2016-02-03"
    },
    { "id": 2,
      "date": "2016-06-08T14:56:29.000Z"
    },
  ],
  "votes": [] 
}
```

### `GET /appointments/:id`

**Gets an appointment by its id.**

Normal response codes: `200`
Error response codes: `4xx`

**Response example**
```json
{
  "id":4,
  "title":"nicht so toller tag Toller Tag",
  "description":"Das wird ein soooo toller tag, nur wann?",
  "created_at":"2016-06-16T11:30:29.940Z",
  "updated_at":"2016-06-16T11:30:29.940Z",
  "dates": [ 
    { "id": 1,
      "date":"2016-02-03"
    },
    { "id": 2,
      "date": "2016-06-08T14:56:29.000Z"
    },
  ],
  "votes":[
    { "id": 1,
      "username": "Lennart",
      "votes": [
        { "id": 1,
          "date_id": 2,
          "state":"yes",
        },
        { 
          "id": 2,
          "date_id": 1,
          "state":"no",
        },
      ]
    },
  ]
}
```

### `PUT /appointments/:id`

**Updates an appointment - Only with valid key.**

Normal response codes: `200 204`
Error response codes: `4xx`

**Request example**
```json
HTTP-HEADER:
  "Authorization: Token token=c51f548b3db84f56a1a200e7dd3b1e0d"

{
  "title":"Grillen am Strand",
}
```

**Response example**
```json
{
  "id":4,
  "title":"Grillen am Strand",
  "description":"Das wird ein soooo toller tag, nur wann?",
  "created_at":"2016-06-16T11:30:29.940Z",
  "updated_at":"2016-06-16T11:30:29.940Z",
  "dates": [ 
    { "id": 1,
      "date":"2016-02-03"
    },
    { "id": 2,
      "date": "2016-06-08T14:56:29.000Z"
    },
  ],
  "votes":[
    { "id": 1,
      "username": "Lennart",
      "votes": [
        { "id": 1,
          "date_id": 2,
          "state":"yes",
        },
        { 
          "id": 2,
          "date_id": 1,
          "state":"no",
        },
      ]
    },
  ]
}
```

### `DELETE /appointments/:id`

**Deletes an appointment - Only with valid key.**

```
HTTP-HEADER:
  "Authorization: Token token=c51f548b3db84f56a1a200e7dd3b1e0d"
```

Normal response codes: `200 204`
Error response codes: `4xx`

### `POST /appointments/:id/votes`

**Creates a vote for appointment *:id***

Normal response codes: `201`
Error response codes: `4xx`

**Request example**
```json
{
  "username": "Lennart",
  "choices": [2]
}
```

**Response example**
```json
{
  "id": 1,
  "name": "Lennart",
  "choices": [2],
  "auth-token": "c51f548b3db84f56a1a200e7dd3b1e0d",
}
```

### `PUT /appointments/:id/votes/:id`

**Updates a vote**

Normal response codes: `201`
Error response codes: `4xx`

**Request example**
```json
HEADER:
  X-APP_KEY: c51f548b3db84f56a1a200e7dd3b1e0d

{
  "choices": [2,1],
}
```

**Response example**
```json
{
  "id": 1,
  "name": "Lennart",
  "choices": [2, 1],
}
```

### `DELETE /appointments/:id/votes/:id`

**Deletes a vote**

```
HEADER:
  X-APP_KEY: c51f548b3db84f56a1a200e7dd3b1e0d
```

Normal response codes: `200 204`
Error response codes: `4xx`
