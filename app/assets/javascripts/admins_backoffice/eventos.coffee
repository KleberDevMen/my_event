$( "[data-mask]").each (index, value) ->
  element = $(value)
  element.mask($(value).data('mask'))