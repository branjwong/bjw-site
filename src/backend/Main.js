var express = require("express");
var app = express();

function route(url, file) {
  app.get(url, function(req, res) {
    options = {
      root: process.cwd() + '/'
    }
    var fileName = req.params.name;
    res.sendFile(file, options);
  });
}

// route('/', '/dist/html/index.html');
// route('/dist/js/home.js', '/dist/js/home.js');


// route('/programming', '/dist/html/programming.html')
// route('/dist/js/programming.js', '/dist/js/programming.js')

// route('/node_modules/bootstrap/dist/css/bootstrap.min.css', '/node_modules/bootstrap/dist/css/bootstrap.min.css');
// route('/resources/icon.ico', '/resources/icon.ico');
// route('/assets/style.css', '/assets/style.css');
// route('/node_modules/bootstrap/dist/js/bootstrap.min.js', '/node_modules/bootstrap/dist/js/bootstrap.min.js');


// app.get('/', function(req, res) {
//   res.send("Hello douchebag!");
// });

app.use(express.static(process.cwd() + '/dist/html/'));
app.use('/dist/html', express.static(process.cwd() + '/dist/html/'));
app.use('/dist/js', express.static(process.cwd() + '/dist/js/'));
app.use('/node_modules/bootstrap/dist/css/bootstrap.min.css', express.static(process.cwd() + '/node_modules/bootstrap/dist/css/bootstrap.min.css'));
app.use('/resources', express.static(process.cwd() + '/resources/'));
app.use('/assets', express.static(process.cwd() + '/assets/'));


route('/writing/blog/latest', '/dist/html/writing/what-i-am-doing-with-my-life.html');
route('/writing/reviews/latest', '/dist/html/writing/cross-game.html');
route('/writing/guide/latest', '/dist/html/writing/factoring-trinomials.html');

app.listen(8000, function() {
  console.log("App listening on port 8000!")
});
