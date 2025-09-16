
const http = require('http');
const port = 80;

const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('<h1>Hello from AWS CodePipeline!</h1>');
});

server.listen(port, () => {
  console.log(`Server running at port ${port}`);
});
