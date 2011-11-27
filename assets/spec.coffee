describe "Prerequisites", ->
  it "should have underscore loaded", ->
    expect(_).toBeTruthy()
  it "should have backbone loaded", ->
    expect(Backbone).toBeTruthy()
  it "should have jquery loaded", ->
    expect($).toBeTruthy()

describe "iterating over shtuff", ->
  it "should iterate over a backbone model", ->
    model = new Backbone.Model { attr: 1, attr_two: 2 }
    model_attributes = {}
    _.each model.attributes, (value, key) ->
      model_attributes[key] = value
    expect(model_attributes).toEqual( { attr: 1, attr_two: 2 } )

  it "doesn't iterate over a backbone model when a length property is set", ->
    model = new Backbone.Model { attr: 1, length: 2 }
    model_attributes = {}
    _.each model.attributes, (value, key) ->
      model_attributes[key] = value
    expect(model_attributes).toEqual( {} )
    
  it "doesn't iterate over a javascript object when a length property is set", ->
    model = { attr: 1, length: 2 }
    model_attributes = {}
    _.each model, (value, key) ->
      model_attributes[key] = value
    expect(model_attributes).toEqual( {} )
    
  it "should iterate over a normal object", ->
    model = { attr: 1, attr_two: 2 }
    model_attributes = {}
    _.each model, (value, key) ->
      model_attributes[key] = value
    expect(model_attributes).toEqual( { attr: 1, attr_two: 2 } )

describe "Nested Attributes", ->
  it "should output the nested models to the JSON format", ->
    joy = new Word { word: "Joy" }
    happy = new Word { word: "Happy" }
    sentence = new Sentence { effing: 2, words: [happy, joy], other: [ "thing 1", "thing 2" ] } # can't iterate over attributes longer because it's got a nested model
    sentence_json = { effing: 2, words: [ { word: "Happy" }, { word: "Joy" } ], other: [ "thing 1", "thing 2" ] }
    expect(sentence.toJSON()).toEqual( sentence_json )
