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

// app.use(express.static(process.cwd() + '/dist/html/'));
// app.use('/dist/html', express.static(process.cwd() + '/dist/html/'));
// app.use('/dist/js', express.static(process.cwd() + '/dist/js/'));
// app.use('/node_modules/bootstrap/dist/css/bootstrap.min.css', express.static(process.cwd() + '/node_modules/bootstrap/dist/css/bootstrap.min.css'));
// app.use('/node_modules/bootstrap/dist/js/bootstrap.min.js', express.static(process.cwd() + '/node_modules/bootstrap/dist/js/bootstrap.min.js'));
// app.use('/resources', express.static(process.cwd() + '/resources/'));
// app.use('/assets', express.static(process.cwd() + '/assets/'));


// route('/writing/blog/latest', '/dist/html/writing/what-i-am-doing-with-my-life.html');
// route('/writing/reviews/latest', '/dist/html/writing/cross-game.html');


app.use(express.static(process.cwd() + '/dist/html/'));
app.use('/dist/html', express.static(process.cwd() + '/dist/html/'));
app.use('/dist/js', express.static(process.cwd() + '/dist/js/'));
app.use('/node_modules/bootstrap/dist/css/bootstrap.min.css', express.static(process.cwd() + '/node_modules/bootstrap/dist/css/bootstrap.min.css'));
app.use('/node_modules/bootstrap/dist/js/bootstrap.min.js', express.static(process.cwd() + '/node_modules/bootstrap/dist/js/bootstrap.min.js'));
app.use('/resources', express.static(process.cwd() + '/resources/'));
app.use('/assets', express.static(process.cwd() + '/assets/'));

// route('/root.js', 'dist/js/root.js');
// route('/writing.js', 'dist/js/writing.js');
// route('/programming.js', 'dist/js/programming.js');
// route('/teaching.js', 'dist/js/teaching.js');

// route('/bootstrap.min.css', '/node_modules/bootstrap/dist/css/bootstrap.min.css');
// route('/bootstrap.min.js', '/node_modules/bootstrap/dist/js/bootstrap.min.js');

// route('/home.js', 'dist/js/home.js');
// route('/teaching', 'dist/html/teaching.html');
// route('/teaching.js', 'dist/js/teaching.js');
// route('/programming', 'dist/html/programming.html');
// route('/programming.js', 'dist/js/programming.js');
// route('/writing', 'dist/html/writing.html');
// route('/writing.js', 'dist/js/writing.js');

route('/megaman', 'dist/html/programming/megaman/megaman.html');
route('/megaman.swf', 'dist/html/programming/megaman/megaman.swf');

route('/duckhunt', 'dist/html/programming/duckhunt/duckhunt.html');
route('/duckhunt.swf', 'dist/html/programming/duckhunt/duckhunt.swf');

route('/zelda', 'dist/html/programming/zelda/zelda.html');
route('/zelda.swf', 'dist/html/programming/zelda/zelda.swf');

// route('/factoring-trinomials', 'dist/html/teaching/factoring-trinomials.html');
// route('/factoring-trinomials.js', 'dist/js/teaching/factoring-trinomials.js');
// route('/trinomial-generator-worksheet', 'dist/html/teaching/trinomial-generator-worksheet.html');
// route('/trinomial-generator-worksheet.js', 'dist/js/teaching/trinomial-generator-worksheet.js');
// route('/tutor-plug', 'dist/html/teaching/tutor-plug.html');
// route('/tutor-plug.js', 'dist/js/teaching/tutor-plug.js');

// route('/japanese', 'dist/html/teaching/tutor-plug/japanese.html');
// route('/japanese.js', 'dist/js/teaching/tutor-plug/japanese.js');

// route('/math10', 'dist/html/teaching/tutor-plug/math10.html');
// route('/math10.js', 'dist/js/teaching/tutor-plug/math10.js');

// route('/math11', 'dist/html/teaching/tutor-plug/math11.html');
// route('/math11.js', 'dist/js/teaching/tutor-plug/math11.js');

// route('/phys11', 'dist/html/teaching/tutor-plug/phys11.html');
// route('/phys11.js', 'dist/js/teaching/tutor-plug/phys11.js');

// route('/phys12', 'dist/html/teaching/tutor-plug/phys12.html');
// route('/phys12.js', 'dist/js/teaching/tutor-plug/phys12.js');

// route('/precalc11', 'dist/html/teaching/tutor-plug/precalc11.html');
// route('/precalc11.js', 'dist/js/teaching/tutor-plug/precalc11.js');

// route('/precalc12', 'dist/html/teaching/tutor-plug/precalc12.html');
// route('/precalc12.js', 'dist/js/teaching/tutor-plug/precalc12.js');

// route('/april-fools', 'dist/html/writing/april-fools.html');
// route('/april-fools.js', 'dist/js/writing/april-fools.js');
// route('/moving-back-to-japan', 'dist/html/writing/moving-back-to-japan.html');
// route('/moving-back-to-japan.js', 'dist/js/writing/moving-back-to-japan.js');
// route('/cross-game', 'dist/html/writing/cross-game.html');
// route('/cross-game.js', 'dist/js/writing/cross-game.js');
// route('/what-i-am-doing-with-my-life', 'dist/html/writing/what-i-am-doing-with-my-life.html');
// route('/what-i-am-doing-with-my-life.js', 'dist/js/writing/what-i-am-doing-with-my-life.js');

// route('/writing/blog/latest', '/dist/html/writing/moving-back-to-japan.html');
// route('/writing/reviews/latest', '/dist/html/writing/cross-game.html');
// route('/writing/guide/latest', 'dist/html/teaching/factoring-trinomials.html');


// Comment this out for production.
// app.listen(8000, function() {
//   console.log("App listening on port 8000!")
// });

// Uncomment this for production.
// https://www.digitalocean.com/community/tutorials/how-to-use-pm2-to-setup-a-node-js-production-environment-on-an-ubuntu-vps
app.listen(80, function() {
  console.log("App listening on port 80!")
});
