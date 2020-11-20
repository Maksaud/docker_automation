// sample node.js web app
// For docker devops project

'use strict';

var express = require('express'),
    app = express();

app.set('veiws', 'veiws');
app.set('view engine', 'jade');

app.get('/', function(req, res){
    res.render('home', {
    });
});

app.listen(8080);
module.exports.getApp = app;