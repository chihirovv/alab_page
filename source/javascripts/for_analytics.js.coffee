$ ->
  # aタグクリックをイベントとして送信
  $('a').on 'click', ->
    _gaq.push [ '_trackEvent', 'linkclick', $(this).attr 'href' ]

