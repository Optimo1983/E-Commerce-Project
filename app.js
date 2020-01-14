const    express     = require('express'),
         path        = require('path'),
         // bodyParser  = require('body-parser'),
         db          = require('./queries'),
         app         = express();
         








// =================================================
app.use(express.static(__dirname + "/public"));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
// app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({ extended:true,}));

app.set('view engine', 'ejs');


// =================================================
app.get('/', (req, res) => {
   res.render('home');
});

app.get('/results', (req, res) => {
   res.render('results');
});

app.get('/product', (req, res) => {
   res.render('product');
});

app.get('/cart', (req, res) => {
   res.render('cart');
});



app.get('/account', (req, res) => {
   res.render('account');

});

// app.post('/account', (req, res) => {
   
// });


app.get('*', (req, res) => {
   res.send('Sorry, page not found.')
});


// PORT
const port = process.env.PORT || 3000;

app.listen(port, () => {
   console.log(`Server has started on port ${port}...`);
});