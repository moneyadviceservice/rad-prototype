class SearchResultsController < ApplicationController
  def display_advisor_sign_in?
    false
  end

  helper_method :display_advisor_sign_in?

  def display_search_results_total?
    false
  end

  helper_method :display_search_results_total?

  def show
    @advisor_data = advisor_data
  end

  def display_search_filter?
    false
  end

  helper_method :display_search_filter?

  def display_advanced_options?
    true
  end

  helper_method :display_advanced_options?

  private

  def advisor_data
    items = [
      {
        advisor_name: 'Ben Barnett',
        advisor_number: 'FCA authorised: #233765835 since June 1990',
        location: 'Location: Essex (19 miles away)',
        percentage_match: '88% match to your requirements',
        percentage: '88'
      },
      {
        advisor_name: 'Ajit Krishnan',
        advisor_number: 'FCA authorised: #233234234 since September 1995',
        location: 'Location: South London (32 miles away)',
        percentage_match: '72% match to your requirements',
        percentage: '72'
      },
      {
        advisor_name: 'Peter Guntrip',
        advisor_number: 'FCA authorised: #392856746 since January 2001',
        location: 'Location: Essex (8 miles away)',
        percentage_match: '66% match to your requirements',
        percentage: '66'
      },
      {
        advisor_name: 'Joe Bloggs',
        advisor_number: 'FCA authorised: #233414234 since October 1998',
        location: 'Location: Essex (12 miles away)',
        percentage_match: '65% match to your requirements',
        percentage: '65'
      },
      {
        advisor_name: 'Amandip Singh',
        advisor_number: 'FCA authorised: #348992876 since April 1987',
        location: 'Location: East London (22 miles away)',
        percentage_match: '52% match to your requirements',
        percentage: '52'
      }
    ]
  end
end
