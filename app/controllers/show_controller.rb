class ShowController < ApplicationController
  def show
   # render the show view using the application layout
   render layout: 'application'
  end
end
