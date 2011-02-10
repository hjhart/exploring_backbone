(function() {
  var say_hello;
  window.onload = function() {
    return say_hello();
  };
  say_hello = function() {
    return alert("Hello, world!");
  };
}).call(this);
