$(document).on 'page:change', ->
  # Universal Analytics�ξ��
  if window.ga?
    ga('set', 'location', location.href.split('#')[0])
    ga('send', 'pageview')

  # ɸ��Υ��ʥ�ƥ������ξ��
  if window._gaq?
    _gaq.push(['_trackPageview'])