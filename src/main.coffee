squel = require "squel"
fs = require "fs"

###
Read `README.md` first.
###

input_path = process.argv[2]
table = process.argv[3]
output_path = process.argv[4]

console.log "Reading file:", input_path

fs.readFile input_path, 'utf8', (err,data) ->
  if (err)
    return console.error(err);

  console.log "File read!"

  codes = (line.split("\t")[0] for line in data.split "\n" when line.trim())
  rows = ({
    option_id: 1011,
    option_row_title: code,
    option_row_sort_order: '',
    option_row_price: '',
    option_row_price_type: 'fixed' } for code in codes) 

  console.log "Using table", table
  
  query = squel.insert()
    .into(table)
    .setFieldsRows(rows)
    .toString()

  console.log "Writing to file", output_path

  fs.writeFile output_path, query, (err) ->
    if (err)
        return console.error(err);

    console.log("The file was saved!");
