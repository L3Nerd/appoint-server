# APPOINT-Server

## API

### `POST /appointments`

**Creates an appointment.**

Normal response codes: `201`
Error response codes: `4xx`

**Request example**
```json
{
  "name":"Grillen am Strand",
  "description":"Wollen demnächst mal am Strand grillen.",
  "creator": "Olli",
  "dates":[
    {
      "date": "2016-06-10",
    },
    {
      "date": "2016-06-17",
    }
  ]
}
```

**Response example**
```json
{
  "id":"1",
  "key":"k19sh63mna7pq83nbd6hdz6",
  "name":"Grillen am Strand",
  "description":"Wollen demnächst mal am Strand grillen.",
  "creator": "Olli",
  "created": "2016-06-08T14:56:29.000Z",
  "updated": "2016-06-08T14:56:29.000Z",
  "dates":[
    {
      "id": "1",
      "date": "2016-06-10",
    },
    {
      "id": "2",
      "date": "2016-06-17",
    }
  ]
}
```

### `GET /appointments/:id`

**Gets an appointment by its id.**

Normal response codes: `200`
Error response codes: `4xx`

**Response example**
```json
{
  "id":"1",
  "name":"Grillen am Strand",
  "description":"Wollen demnächst mal am Strand grillen.",
  "creator": "Olli",
  "created": "2016-06-08T14:56:29.000Z",
  "updated": "2016-06-08T14:56:29.000Z",
  "dates":[
    {
      "id": "1",
      "date": "2016-06-10",
    },
    {
      "id": "2",
      "date": "2016-06-17",
    }
  ],
  "votes":[
    {
      "name":"Lennart",
      "vote":"1"
    },
    {
      "name":"Peter",
      "vote":"2"
    }
  ]
}
```

### `PUT /appointments/:id/admin/:key`

**Updates an appointment - Only with valid key. **

Normal response codes: `200 204`
Error response codes: `4xx`

**Request example**
```json
{
  "name":"Kochen bei mir zu Hause.",
}
```

**Response example**
```json
{
  "id":"1",
  "key":"k19sh63mna7pq83nbd6hdz6",
  "name":"Kochen bei mir zu Hause",
  "description":"Wollen demnächst mal am Strand grillen.",
  "creator": "Olli",
  "created": "2016-06-08T14:56:29.000Z",
  "updated": "2016-06-08T14:56:29.000Z",
  "dates":[
    {
      "id": "1",
      "date": "2016-06-10",
    },
    {
      "id": "2",
      "date": "2016-06-17",
    }
  ]
}
```

### `DELETE /appointments/:id/admin/:key`

**Deletes an appointment - Only with valid key.**

Normal response codes: `200 204`
Error response codes: `4xx`

### `POST /appointments/:id`

**Creates a vote for date *:id***

Normal response codes: `201`
Error response codes: `4xx`

**Request example**
```json
{
  "name":"Lennart",
}
```
