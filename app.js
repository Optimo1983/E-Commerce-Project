// ================ NPM PACKAGE REQUIREMENTS =====================
// ===============================================================

// Require sensitive info pertaining to security of app
require('dotenv').config();

// Packages/Libraries
const express = require('express'),
      app = express(),
      methodOverride = require('method-override'),
      passport = require('passport'),
      flash = require('express-flash'),
      session = require('express-session'),
      cookieParser = require('cookie-parser'),
      queriesLib = require('./lib/queries');

// Passport configuration
const initializePassport = require('./config/passport');

// Route file requirements
const register = require('./routes/user/register'),
      login = require('./routes/user/login'),
      logout = require('./routes/user/logout'),
      account = require('./routes/user/account'),
      results = require('./routes/results'),
      misc = require('./routes/misc');



// ======================= MIDDLEWARE ============================
// ===============================================================

// Express middleware
app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));
app.use(methodOverride('_method'));
app.use(flash());
app.use(express.static(__dirname + '/public'));
app.use(express.json());
app.use(session({
   secret: process.env.SESSION_SECRET,
   resave: false,
   saveUninitialized: false
}));

app.use(passport.initialize());
app.use(passport.session());

// Router
app.use('/user/register', register);
app.use('/user/login', login);
app.use('/user/logout', logout);
app.use('/user/account', account);
app.use('/results', results);
app.use('/', misc);

// Express settings
app.set('view engine', 'ejs');
app.set('view options', { layout: false });



// ======================= SERVER ================================
// ===============================================================

// If PORT is set, use that; otherwsie use port 3000
const port = process.env.PORT || 3000;

app.listen(port, () => {
   console.log(`Server has started on port ${port}...`);
});



// ======================= FUNCTIONS =============================
// ===============================================================

// Configure Passport
initializePassport(passport, queriesLib.getUserByEmail, queriesLib.getUserByID);

