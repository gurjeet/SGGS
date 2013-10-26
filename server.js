var connect = require('connect');
/*
connect .createServer(
	connect.static(__dirname)
).listen(8080);
*/

var http = require("http");

var app = connect()
	.use(connect.logger("dev"))
	.use(connect.static(__dirname));

http.createServer(app).listen(8080);

console.log("Visit localhost:8080/SGGS.html");
