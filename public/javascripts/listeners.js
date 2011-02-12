(function() {
  $(document).ready(function() {
    return $('button:first').click(function() {
      return $('body').toggleClass('dark', 'light');
    });
  });
}).call(this);
