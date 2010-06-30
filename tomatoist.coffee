require.paths.unshift('express')
require('express')

configure -> set('root', __dirname)

get '/', ->
  page: 'index.html.haml'
  this.render(page, {
    locals: { title: 'Tomatoist', directory: __dirname }
  })

run()
