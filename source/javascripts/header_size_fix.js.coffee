$ ->
  wrapperWidth = 960
  headerContentsWidth = 0
  colNum = 8
  for i in [0..colNum]
    headerContentsWidth += $('header ul a').eq(i).width()
  console.log headerContentsWidth

  nav_padding =  ( wrapperWidth - headerContentsWidth - (colNum * 1 + 1) - 1 ) / colNum / 2
  $('header ul a').css 'padding-left', nav_padding
  $('header ul a').css 'padding-right', nav_padding

