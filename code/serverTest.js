

var request = require('request');
var options = {
  'method': 'POST',
  'url': 'http://127.0.0.1:8080/getLangList',
  'headers': {
    'Content-Type': 'application/x-www-form-urlencoded'
  },
  body:JSON.stringify(
    {
      'language': 'en-us'
    }
  )
};
request(options, function (error, response) {
  if (error) throw new Error(error);
  console.log(response.body);
});