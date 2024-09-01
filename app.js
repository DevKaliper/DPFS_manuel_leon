const express = require('express');
const bodyParser = require('body-parser');
const app = express();

// Set view engine to EJS
app.set('view engine', 'ejs');

// Static files (CSS, Images)
app.use(express.static('public'));

// Parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// Routes
const homeRoutes = require('./src/routes/home');
const productRoutes = require('./src/routes/product');
const cartRoutes = require('./src/routes/cart');
const userRoutes = require('./src/routes/user');

app.use('/', homeRoutes);
app.use('/product', productRoutes);
app.use('/cart', cartRoutes);
app.use('/user', userRoutes);

// Start the server
app.listen(3000, () => {
    console.log('Server is running on http://localhost:3000');
});
