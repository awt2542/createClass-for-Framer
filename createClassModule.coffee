exports.createClass = (layer) ->
  class Temp extends Layer
    constructor: (options={}) ->
      options.width ?= layer.width
      options.height ?= layer.height
      options.image ?= layer.image
      super options
      for subLayer in layer.subLayers
        @[subLayer.name] = new Layer
          name: subLayer.name
          image: subLayer.image
          frame: subLayer.frame
          superLayer: @
