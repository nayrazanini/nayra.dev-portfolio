const express = require('express');
const bodyParser = require('body-parser');
const { parseQuery } = require('./utils/parse');

const app = express();
app.use(bodyParser.json());

app.post('/explain', (req, res) => {
  const { query } = req.body;
  if (!query) return res.status(400).json({ error: 'query missing' });
  const ast = parseQuery(query);
  return res.json({ explanation: 'explicação mock', ast });
});

if (require.main === module) {
  app.listen(3000, () => console.log('App running on 3000'));
}

module.exports = app;
