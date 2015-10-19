Router.map () ->

  @route 'home',
    layoutTemplate: ''
    path: '/'

  @route 'parchment',
    layoutTemplate: ''
    path: '/_/:_id'
#    data: () ->
#      Parchments.findOne
#        _id: @params._id

