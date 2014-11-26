class ShowController < ApplicationController
  def show
   render layout: 'application'
  end

  def display_advisor_sign_in?
    true
  end

  helper_method :display_advisor_sign_in?
end
