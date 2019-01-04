var fs = require('fs')

data = fs.readFileSync('my.csv');
output = fs.readFileSync('mysql/sql-scripts/InsertTable.sql')


var lines = data.toString().split('\n');



for(var i = 0 ;  i < lines.length ; i++){

}