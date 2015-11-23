class SubmissionsController < ApplicationController

  def new
    @product = Product.new
  end

  
end


# After "Get pictures button" clicked...allof this happens in Javascript:
# Read the value from the textbot for username
# $.ajax to Instagram to get images
# parse the image urls from the ajax response
# dynamically append radio buttons to the form for each image. you should write these in pure HTML


