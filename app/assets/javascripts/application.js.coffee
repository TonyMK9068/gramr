# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery.ui.all
#= require jquery_ujs
#= require yeti/loader
#= require yeti/bootswatch

  $ ->
    $('input.root-page-button').mouseenter ->
      $(this).css('background-color', 'white')
      $(this).css('color', 'rgb(0, 169, 151)')
    $('input.root-page-button').mouseout ->
      $(this).css('background-color', 'none')
      $(this).css('background',"transparent")
      $(this).css('color', 'white')
      $(this).css('border-style', 'solid')
    
    $('i.fa.fa-3x').mouseenter ->
      subject = $(this)
      $(subject).addClass('fa-5x').removeClass('fa-3x').delay(2500).queue ->
        $(subject).addClass('fa-3x').removeClass('fa-5x').dequeue()

        