# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

things_i_do = ["fancy backgrounds.",
                  "ecommerce.",
                  "scalable webapps.",
                  "simple UIs.",
                  "rails development.",
                  "html5.",
                  "jquery.",
                  "coffeescript.",
                  "all the buzzwords.",
                  "motion graphic design.",
                  "[latest web craze].",
                  "css3.",
                  "repetitive lists.",
                  "RESTful APIs",
                  "video editing.",
                  "special effects.",
                  "web design.",
                  "general hackery.",
                  "a lot of stuff, ok?",
                  "hold up, are you still here?",
                  "thanks."];

setInterval(->
  $("#things_i_do li:last-child").remove()
  current_thing = things_i_do.shift()
  $("<li>" + current_thing + "</li>").addClass("hidden").prependTo("#things_i_do")
  things_i_do.push(current_thing)
, 5000)

setInterval(->
  $.ajax({
    url: '/listening_to',
    success: (data) ->
      $("#currently_listening_to span").text("Currently listening to: " + data["name"] + " by " + data["artist_name"])
      if $("#currently_listening_to").css("bottom") == "-35px"
        $("#currently_listening_to").css("bottom", "-12px")
    error: ->
      $("#currently_listening_to").css("bottom", "-35px")
  })
, 60000)