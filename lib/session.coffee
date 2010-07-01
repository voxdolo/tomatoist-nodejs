db: require('riak-js').getClient()

# class Session
  # @collectionName: 'sessions'

  # constructor: (name, custom) ->
    # @name: name
    # @custom: custom

  # @all: (options) ->
    # db.getAll(@collectionName, options)

  # @findByID: (id, options) ->
    # db.get(@collectionName, id, options)

  # @delete: (id, options) ->
    # db.remove(@collectionName, id, options)

# exports.Session: Session

sys: require('sys')

db.get('sessions') (session, meta) ->
  session['name'] = 'cool'
  db.save(session)()
