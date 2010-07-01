require.paths.unshift("${__dirname}/../vendor")
sys: require('sys')
sys.puts(require.paths)
# mongo: new require('vendor/mongodb').MongoDB()

class Session
  constructor: (name, custom) ->
    @name: name
    @custom: custom

  @collection: mongo.getCollection('sessions')

exports.Session: Session
