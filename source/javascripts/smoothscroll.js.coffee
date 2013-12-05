$ ->
  $('a[href^=#]').click ->
    speed = 250
    href = $(this).attr 'href'
    target = $(if href == '#' or href == '' then 'html' else href)
    position = target.offset().top
    $('html, body').animate scrollTop: position, speed, 'swing'
    false
