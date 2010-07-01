require('./helper')

vows: require('vows')
assert: require('assert')

Session: require('session').Session

vows.describe('Session').addBatch({
  'interacting with the datastore': {
    sessions: -> Session.collection(->)
    'creating a new session': {
      topic: -> @sessions.insert({ name: 'fd83z', custom: 'voxdolo' })
      'persists the session': {
        'when interogating the document': {
          topic: -> sessions.find({ custom: 'voxdolo' })
          'it has the right custom name': (topic) -> assert.equal(topic.custom, 'voxdolo')
          'it has the right name': (topic) -> assert.equal(topic.name, 'fd83z')
        }
      }
    }
  }
}).run()

