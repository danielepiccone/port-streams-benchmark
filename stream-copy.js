#!/usr/bin/node

var fs = require('fs');

var millis = Date.now();

var s = fs.createReadStream('blocks');

s.pipe(fs.createWriteStream('blocks_node_copy'));
s.on('end', function() {
    process.stdout.write(Date.now() - millis);
});
