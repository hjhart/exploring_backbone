root = global ? window

class root.Word extends Backbone.Model

root.Sentence = Backbone.Model.extend 
  toJSON: ->
    attrs = _.clone this.attributes

    model_attributes = {}
    _.each attrs, (value, key) ->
      if value instanceof Array
        model_attributes[key] = _.map value, (model) ->
          if model instanceof Backbone.Model
            model.toJSON()
          else
            model
      else
        model_attributes[key] = value
    model_attributes





