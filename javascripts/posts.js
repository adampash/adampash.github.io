(function() {
  var font_index, last_random;

  last_random = null;

  font_index = 0;

  $(function() {
    $('a').hover(function(event) {
      var $this, colors, random;
      colors = ['#7709F2', '#2AABDF', '#00CC5E', '#ED09FF', '#F97906'];
      if (typeof last_random === 'string') {
        colors.splice(colors.indexOf(last_random), 1);
      }
      random = Math.floor(Math.random() * colors.length);
      $this = $(this);
      $this.css('color', colors[random]);
      return last_random = colors[random];
    }, function(event) {
      var $this;
      $this = $(this);
      return $this.removeAttr('style');
    });
    return $(document).scrollTop(0);
  });

}).call(this);
