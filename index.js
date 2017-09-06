"use strict";

var lambda = require('Lambda');

exports.handler = function(event, context, callback) {
  console.log("Received event payload: " + event.body);
  var res = lambda.handler(event.body);
  callback(null, res);
};
