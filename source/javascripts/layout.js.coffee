align_li = (wrapperWidth, colNum, target) ->

  contentsWidth = 0
  for i in [0..colNum]
    contentsWidth += target.eq(i).width()

  nav_padding =  ( wrapperWidth - contentsWidth - (colNum * 1 + 1) - 1 ) / colNum / 2
  target.css 'padding-left', nav_padding
  target.css 'padding-right', nav_padding

arrange_height = (target) ->
  max_height = 0
  for i in [0..target.length]
    if target.eq(i).height() > max_height
      max_height = target.eq(i).height()

  for i in [0..target.length]
    target.css 'height', max_height

expand_body = ->
  without_body_height = $('header').height() + $('footer').height()
  total_height = without_body_height + $('div#body').height()
  if $(window).height() > total_height
    $('div#body').height( $(window).height() - without_body_height + 30 )


$ ->
  wrapperWidth = 960

  align_li( wrapperWidth, $('header li').length, $('header ul a') )
  align_li( wrapperWidth, $('footer > div.wrapper > ul > li').length, $('footer > div.wrapper > ul > li') )

  arrange_height( $('footer > div.wrapper > ul > li') )

  expand_body()
