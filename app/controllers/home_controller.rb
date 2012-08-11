class HomeController < ApplicationController
  
  def index
    @budget = Budget.find_by_end_date(Budget.maximum(:end_date))
  end
  
end
