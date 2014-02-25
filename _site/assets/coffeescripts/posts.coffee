last_random = null
font_index = 0
$ ->
  $('a').hover(
    (event) ->
      colors = ['#7709F2', '#2AABDF', '#00CC5E', '#ED09FF', '#F97906']
      if typeof last_random == 'string'
        colors.splice(colors.indexOf(last_random), 1)
      random = Math.floor(Math.random() * colors.length)
      $this = $(this)
      $this.css('color', colors[random])
      last_random = colors[random]
    (event) ->
      $this = $(this)
      $this.removeAttr('style')
  )

# font switcher
  # $('body').keypress (event) ->
  #   # console.log 'press', event
  #   font_families = ['Rockwell', 'TisaOT', 'Sentinel-Light', 'Sentinel-Book', 'Times New Roman']
  #   font_colors =   ['black',    'black',  'black',          '#555',          'black']
  #   if event.charCode == 106
  #     font_index++
  #     font_index = 0 if font_index > font_families.length - 1
  #   else if event.charCode == 107
  #     font_index--
  #     font_index = font_families.length - 1 if font_index < 0
  #   $('.entry_body').css('font-family', font_families[font_index])
  #   $('.entry_body').css('color', font_colors[font_index])
  #   console.log font_families[font_index]

  $(document).scrollTop(0)
  # $('.stick').affix()