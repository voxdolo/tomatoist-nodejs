require('./helper')
vows: require('vows')
assert: require('assert')

vows.describe('Tomatoist').addBatch({
  'visiting the index': {
    topic: 'Hello node'
    'inpsecting my node': {
      'contains my node': (topic) -> assert.contains(topic, 'ASS node')
    }
  }
}).run()
