const { parseQuery } = require('../parse');

describe('Função parseQuery', () => {
  test('deve identificar SELECT e FROM em uma consulta simples', () => {
    // Prepara
    const query = 'SELECT nome FROM alunos';
    
    // Executa
    const resultado = parseQuery(query);
    
    // Verifica
    expect(resultado.select).toBe(true);
    expect(resultado.from).toBe(true);
    expect(resultado.join).toBeUndefined();
  });
});