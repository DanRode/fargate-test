var express = require('express');
const app = express();
const contextRoot = '/';

app.get(contextRoot, (req, res) => {
  res.send('<H2>AWS Fargate Node.js test app\n</H2>');
})

// Return 200 OK for load balancer check
app.get('/check', (req, res) => {
    res.status(200).end();s

});


var port = 80;
app.listen(port);
