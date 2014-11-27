class ShowController < ApplicationController
  def show
   render layout: 'application'
  end

  def display_advisor_sign_in?
    true
  end

  helper_method :display_advisor_sign_in?

  def display_search_results_total?
    true
  end

  helper_method :display_search_results_total?
  
  def display_advanced_options?
    false
  end

  helper_method :display_advanced_options?
end
