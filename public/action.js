$(document).ready(function(){
  var things_i_do = ["rails development.",
                    "html5.",
                    "jQuery.",
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
                    "general hackery."];
  setInterval(function(){
    $("#things_i_do li:last-child").remove();
    $("<li>" + things_i_do[Math.floor(Math.random()*things_i_do.length)] + "</li>").addClass("hidden").prependTo("#things_i_do");
  }, 5000);
});