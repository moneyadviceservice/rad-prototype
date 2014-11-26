class SearchResultsController < ApplicationController
  def display_advisor_sign_in?
    false
  end

  helper_method :display_advisor_sign_in?

  def display_search_results_total?
    false
  end

  helper_method :display_search_results_total?

  def advisor_data
    items = [
      {
        advisor_name: 'Joe Bloggs',
        advisor_number: 'FCA authorised: #233414234 since October 1998',
        location: 'Location: Essex (12 miles away)',
        percentage_match: '72% match to your requorements'
      }
    ]
  end
end
