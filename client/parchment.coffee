#Template.parchment.gestures

#  'tap .parchment': (event, template) ->
#    console.log "you touched the parchment"


Template.parchment.helpers

  templateGestures:
    'tap .parchment': (e,t) ->
      console.log e
    'doubletap svg': (event, template) ->
      console.log event
      targetClassList = event.target.classList.toString()
      if targetClassList is "parchment"
        point = event.center
        origin = event.target
        nux = point.x - origin.offsetLeft
        nuy = point.y - origin.offsetTop
        Meteor.call("createKnot", @_id, nux, nuy, 1, 0)

  knotInDiagram: () ->
    Knots.find
      parchmentId: @_id

