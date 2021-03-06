// async test for http 200 resoponse code using supertest
'use strict';

var request = require("supertest"),
    app = require("../app").getApp;

describe('GET /', function(){
    it('expects HTTP response 200', function(done){
        request(app)
        .get('/')
        .expect(200);
        done();
        process.exit();
    });
});