const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Welcome to Group 1 Auto Scaling NodeJS Demo App</h1> <h4>Message: Success</h4> <p>GitHub integration with AWS EC2 Userdata</p>');
})

app.listen(port, () => {
  console.log(`Demo app is up and listening to port ${port}`);
})