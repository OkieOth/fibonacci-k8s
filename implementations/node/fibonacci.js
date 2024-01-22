const express = require('express');
const app = express();
const port = 5000;

// // Validate request against OpenAPI schema
// app.use('/fibonacci/:number', validate({ params: openApiSchema }));

// Define the Fibonacci function
function fibonacci(n) {
  const result = [0, 1];
  for (let i = 2; i <= n; i++) {
    result[i] = result[i - 1] + result[i - 2];
  }
  return result;
}

// Define the route
app.get('/fibonacci/:number', (req, res) => {
  const { number } = req.params;
  const n = parseInt(number);

  // Validate the input
  if (isNaN(n) || n < 0) {
    return res.status(400).json({ error: 'Invalid input. Please provide a non-negative integer.' });
  }

  // Calculate Fibonacci sequence
  const result = fibonacci(n);

  // Send the response
  return res.json(result);
});


// app.get('/test', (req, res) => {
//     res.send("test");
//   });
  

// app.get('/', (req, res) => {
// res.send('Hello World!')
// })

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
