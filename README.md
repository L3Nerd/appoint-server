# APPOINT-Server

## Requirements

### Ruby

ruby must be installed and configured in version >=2.0

See http://rvm.io/ for easy-to-follow instructions.

### Setup

Run following command from the root application folder: `bin/setup`

This will setup all required ruby gems and the development sqlite database.

## Start the server

To start the development server, run the following command from the root application folder:
`bin/rails server`

After initializing the server is available at `http://localhost:3000/`.

## API

Examples of this API documentation are FULL examples, means that every parameter is covered (and required!).

"Key": "Value" -> is an string

"Key": 123     -> is an integer

The below used authentication keys are used as HTTP-HEAD Parameters.

cURL example:

`curl -X POST --data {...} -IH "Authorization: Token token=c51f548b3db84f56a1a200e7dd3b1e0d" http://localhost:3000/appointments/1`

### `POST /appointments`

**Creates an appointment.**

Normal response codes: `201`
Error response codes: `4xx`

**Request example**
```json
{
  "title":"Toller Tag!",
  "description":"Das wird ein soooo toller tag, nur wann?",
  "dates": [ {"date":"2016-02-03"}, {"date": "2016-06-08T14:56:29.000Z"} ]
}
```

**Response example**
```json
{
  "id":4,
  "title":"Toller Tag!",
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
  "title":"Toller Tag!",
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
  "title":"Toller Tag! - Updated",
  "description":"Haben beschlossen zu grillen!",
}
```

**Response example**
```json
{
  "id":4,
  "title":"Toller Tag! - Updated",
  "description":"Haben beschlossen zu grillen!",
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
  "created_at":"2016-06-16T11:30:29.940Z",
  "updated_at":"2016-06-16T11:30:29.940Z",
}
```

### `PUT /appointments/:id/votes/:id`

**Updates a vote**

Normal response codes: `201`
Error response codes: `4xx`

**Request example**
```json
HTTP-HEADER:
  "Authorization: Token token=c51f548b3db84f56a1a200e7dd3b1e0d"

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
  "created_at":"2016-06-16T11:30:29.940Z",
  "updated_at":"2016-06-16T11:31:29.940Z",
}
```

### `DELETE /appointments/:id/votes/:id`

**Deletes a vote**

```
HTTP-HEADER:
  "Authorization: Token token=c51f548b3db84f56a1a200e7dd3b1e0d"
```

Normal response codes: `200 204`
Error response codes: `4xx`

# Client

`bin/client --help`

```
Usage:
       client [resource] [subcommand] [ARGS]

where [resource] are:
- appointment
- vote

and [subcommand] are:
show
create
update
delete

query subcommand for more help ( client vote create --help )

global [ARGS] are:
  -a, --address=<s>    Address of appoint-webservice (default: localhost)
  -p, --port=<i>       Port of appoint-webservice (default: 3000)
  -h, --help           Show this message
```
