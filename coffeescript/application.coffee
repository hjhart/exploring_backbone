root = exports ? this

class root.Shape extends Backbone.Model

$(document).ready ->
	s = new Shape color: "blue", shape: "Square"
	console.log s.get('color')
	console.log s.get('shape')
