const request = require('supertest');
const app = require('../../src/app');

test('POST /explain returns explanation', async () => {
  const res = await request(app)
    .post('/explain')
    .send({ query: 'SELECT id FROM alunos;' });
  expect(res.statusCode).toBe(200);
  expect(res.body.explanation).toBeDefined();
});
