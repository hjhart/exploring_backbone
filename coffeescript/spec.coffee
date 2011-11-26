describe "Prerequisites", ->
  it "should have underscore loaded", ->
    expect(_).toBeTruthy()
  it "should have backbone loaded", ->
    expect(Backbone).toBeTruthy()
  it "should have jquery loaded", ->
    expect($).toBeTruthy()
