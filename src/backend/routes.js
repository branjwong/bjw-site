// Wish I could figure this out
// http://www.sitepoint.com/understanding-module-exports-exports-node-js/ 

var exports = module.exports = {};

var express = require("express");
var app = express();

function route(url, file) {
  exports.app.get(url, function(req, res) {
    options = {
      root: process.cwd() + '/'
    }
    var fileName = req.params.name;
    res.sendFile(file, options);
  });
}

exports.app.use(express.static(process.cwd() + '/dist/html/'));
exports.app.use('/dist/html', express.static(process.cwd() + '/dist/html/'));
exports.app.use('/dist/js', express.static(process.cwd() + '/dist/js/'));
exports.app.use('/node_modules/bootstrap/dist/css/bootstrap.min.css', express.static(process.cwd() + '/node_modules/bootstrap/dist/css/bootstrap.min.css'));
exports.app.use('/resources', express.static(process.cwd() + '/resources/'));
exports.app.use('/assets', express.static(process.cwd() + '/assets/'));


route('/writing/blog/latest', '/dist/html/writing/what-i-am-doing-with-my-life.html');
route('/writing/reviews/latest', '/dist/html/writing/cross-game.html');
route('/writing/guide/latest', '/dist/html/writing/factoring-trinomials.html');


// Uncomment this for production.
// https://www.digitalocean.com/community/tutorials/how-to-use-pm2-to-setup-a-node-js-production-environment-on-an-ubuntu-vps
// app.listen(80, function() {
//   console.log("App listening on port 80!")
// });
