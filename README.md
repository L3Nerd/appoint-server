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
  "dates":["2016-06-10", "2016-06-17"]
}
```

**Response example**
```json
HEADER:
  X-APP_KEY: k19sh63mna7pq83nbd6hdz6

{
  "id":"1",
  "name":"Grillen am Strand",
  "description":"Wollen demnächst mal am Strand grillen.",
  "creator": "Olli",
  "created": "2016-06-08T14:56:29.000Z",
  "updated": "2016-06-08T14:56:29.000Z",
  "dates":["2016-06-10", "2016-06-17"]
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
  "dates":["2016-06-10", "2016-06-17"],
  "votes":[
    {
      "name":"Lennart",
      "choices": ["2016-06-10", "2016-06-17"]
    },
    {
      "name":"Peter",
      "choices": ["2016-06-17"]
    }
  ]
}
```

### `PUT /appointments/:id`

**Updates an appointment - Only with valid key. **

Normal response codes: `200 204`
Error response codes: `4xx`

**Request example**
```json
HEADER:
  X-APP_KEY: k19sh63mna7pq83nbd6hdz6

{
  "name":"Kochen bei mir zu Hause.",
}
```

**Response example**
```json
{
  "id":"1",
  "name":"Kochen bei mir zu Hause",
  "description":"Wollen demnächst mal am Strand grillen.",
  "creator": "Olli",
  "created": "2016-06-08T14:56:29.000Z",
  "updated": "2016-06-08T14:56:29.000Z",
  "dates":["2016-06-10", "2016-06-17"]
}
```

### `DELETE /appointments/:id`

**Deletes an appointment - Only with valid key.**

```
HEADER:
  X-APP_KEY: k19sh63mna7pq83nbd6hdz6
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
  "name":"Lennart",
  "choices": ["2016-06-10", "2016-06-17"]
}
```

**Response example**
```json
{
  "id":"1",
  "name":"Lennart",
  "choices": ["2016-06-10", "2016-06-17"]
}
```

### `PUT /appointments/:id/votes/:id`

**Updates a vote**

Normal response codes: `201`
Error response codes: `4xx`

**Request example**
```json
{
  "name":"Hans",
}
```

**Response example**
```json
{
  "id":"1",
  "name":"Hans",
  "choices": ["2016-06-10", "2016-06-17"]
}
```

### `DELETE /appointments/:id/votes/:id`

**Deletes a vote**

Normal response codes: `200 204`
Error response codes: `4xx`
