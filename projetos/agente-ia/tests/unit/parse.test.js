const { parseQuery } = require('../../src/utils/parse');

test('parse basic select', () => {
  const ast = parseQuery('SELECT id, nome FROM alunos;');
  expect(ast.select).toBeTruthy();
  expect(ast.from).toBeTruthy();
});
