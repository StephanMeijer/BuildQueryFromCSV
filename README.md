# Build Query From CSV

Simple script to transform a CSV file into a query

To compile the CoffeeScript to JavaScript: `gulp coffee`.

To run: `node dist/main.js data.csv wp_fmepco_rowoption_table_test query.sql`

File `data.csv` should look like this:

```
S 3050-Y90R     S 3050  Y90R
S 3060-Y90R     S 3060  Y90R
S 3560-Y90R     S 3560  Y90R
S 4010-Y90R     S 4010  Y90R
S 4020-Y90R     S 4020  Y90R
S 4030-Y90R     S 4030  Y90R
S 4040-Y90R     S 4040  Y90R
S 4050-Y90R     S 4050  Y90R
S 4550-Y90R     S 4550  Y90R
S 5010-Y90R     S 5010  Y90R
S 5020-Y90R     S 5020  Y90R
S 5030-Y90R     S 5030  Y90R
S 5040-Y90R     S 5040  Y90R
S 5540-Y90R     S 5540  Y90R
S 6010-Y90R     S 6010  Y90R
S 6020-Y90R     S 6020  Y90R
S 6030-Y90R     S 6030  Y90R
S 7010-Y90R     S 7010  Y90R
S 7020-Y90R     S 7020  Y90R
S 8010-Y90R     S 8010  Y90R
```

Seperation by tab.