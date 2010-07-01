sys: require('sys')
assert: require('assert')

assert.contains:
  contains: (expected, actual, message) ->
    if actual.indexOf(expected) == -1
      assert.fail(actual, expected, message, "does not contain", assert.contains)

