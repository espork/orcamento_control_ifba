class HomeController < ApplicationController
  
  before_filter :authenticate_user!  
  def index
    @budget = Budget.find_by_end_date(Budget.maximum(:end_date))
  end
  
end
