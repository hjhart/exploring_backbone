describe "Prerequisites", ->
  it "should have underscore loaded", ->
    expect(_).toBeTruthy()
  it "should have backbone loaded", ->
    expect(Backbone).toBeTruthy()
  it "should have jquery loaded", ->
    expect($).toBeTruthy()

describe "Nested Attributes", ->
	it "should output the nested models to the JSON format", ->
		happy = new Word word: "Happy"
		joy = new Word word: "Joy"
		sentence = new Sentence length: 2, words: [happy, joy]
		
		sentence_json = { length: 2, words: [ { word: "Happy" }, { word: "Joy" } ] }
		
		expect sentence.toJSON().toEqual( sentence_json )