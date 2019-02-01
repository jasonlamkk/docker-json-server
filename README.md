# docker-json-server

[JSON Server](https://github.com/typicode/json-server) provides REST API mocking based on plain JSON.
This is a [docker](https://www.docker.io) image that eases setup.

## Usage



### JSON source

If you mount a file to `/data/db.json` (as in the above example),
it will automatically be used as the plain JSON data source file.

A sample file could look like this:

```json
{
  "posts": [
    { "id": 1, "body": "foo" },
    { "id": 2, "body": "bar" }
  ],
  "comments": [
    { "id": 1, "body": "baz", "postId": 1 },
    { "id": 2, "body": "qux", "postId": 2 }
  ]
}
```

### JS seed file

If you mount a file to `/data/file.js`,
it will automatically be used as a JS seed file.

JSON Server expects JS files to export a function that returns an object.
Seed files are useful if you need to programmaticaly create a lot of data.

A sample file could look like this:

```javascript
module.exports = function() {
  var data = {};

  data.posts = [];
  data.posts.push({ id: 1, body: 'foo' });
  //...

  return data;
}
```
