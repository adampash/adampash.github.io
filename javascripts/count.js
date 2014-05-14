(function() {

  $.ajax(
    {
      // url: 'http://analytic.adampash.com/hit',
      url: 'http://analytic.adampash.com/hit',
      type: 'PUT',
      data: {url: window.location.href}
    }
  ).error(function(data) {
    console.log('error');
  }).success(function(data) {
    console.log(data);
  });

}).call(this);

