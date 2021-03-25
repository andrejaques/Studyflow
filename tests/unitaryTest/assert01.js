const assert = require('assert'); // Sintaxe para incluir o módulo assert

/*Assert - all methods
  Strict assertion mode
  Legacy assertion mode
  Class: assert.AssertionError
  new assert.AssertionError(options)
  Class: assert.CallTracker
  new assert.CallTracker()
  tracker.calls([fn][, exact])
  tracker.report()
  tracker.verify()
  assert(value[, message])
  Comparison details
  Comparison details
  assert.doesNotMatch(string, regexp[, message])
  assert.doesNotReject(asyncFn[, error][, message])
  assert.doesNotThrow(fn[, error][, message])
  assert.throws(fn[, error][, message])
  
  assert() -- Checks if a value is true. Same as assert.ok()
  assert.ok(value[, message]) -- Checks if a value is true. 
  assert.equal(actual, expected[, message]) -- check if two values are igqual using the operator ==
  assert.strictEqual(actual, expected[, message]) -- check if two objects are equal, using the === operator.
  assert.deepEqual(actual, expected[, message]) -- Checks if two values are equal, and their child objects, using the == operator.
  assert.deepStrictEqual(actual, expected[, message]) -- check if two objects, and their child objects, are equal, using the === operator.
    negative of (first = change to !)
  assert.notEqual(actual, expected[, message])
  assert.notStrictEqual(actual, expected[, message])
  assert.notDeepEqual(actual, expected[, message])
  assert.notDeepStrictEqual(actual, expected[, message])

  assert.fail([message]) - Throws an Assertion Error
  assert.ifError(value) -- Throws a specified error if the specified error evaluates to true
  assert.match(string, regexp[, message])
  assert.rejects(asyncFn[, error][, message])
  */


// samples

assert.strictEqual(50, 50); // 50 == 50
// assert.strictEqual(50, 70); // error!!! AssertionError: 50 == 70

console.log('Return True - No errors')

function division(x, y) {
  return x / y;
}

const expected = division(9, 3);

assert.strictEqual(expected, 3, 'Nove dividido por três é igual a três');
