# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

dispatcher = new WebSocketRails('localhost:3000/websocket')

channel = dispatcher.subscribe('messages') #message #has to correspond to 'shouter'/broadcaster code in
#controller

channel.bind 'new', (image) ->

  $image = $('.messages tr:last').clone();

  $image.find('.title').text image.title

#can use both ways to reference(above&below)

  $image.find('img').attr 'src', image['image_url']

  $('.messages').append($image)





  
