// Mock simple parseQuery function
function parseQuery(sql) {
  const lower = sql.toLowerCase();
  const ast = {};
  if (lower.includes('select')) ast.select = true;
  if (lower.includes('from')) ast.from = true;
  if (lower.includes('join')) ast.join = true;
  return ast;
}

module.exports = { parseQuery };
