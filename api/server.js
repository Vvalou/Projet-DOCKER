const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');

const app = express();
app.use(cors());
app.use(express.json());

const pool = new Pool({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME
});

app.get('/status', (req, res) => {
  res.json({ status: 'OK' });
});

app.get('/items', async (req, res) => {
  const result = await pool.query('SELECT * FROM items');
  res.json(result.rows);
});

app.get('/health', async (req, res) => {
  await pool.query('SELECT 1');
  res.json({ status: 'healthy' });
});

app.listen(3000, '0.0.0.0', () => console.log('API on port 3000'));
