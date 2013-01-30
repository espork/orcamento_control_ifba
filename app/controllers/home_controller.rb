class HomeController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    
    @budget = Budget.find_by_end_date(Budget.maximum(:end_date))
    
    if current_user.unit && !@budget.nil? 
      @transfers = Transfer.joins(:resource).where("resources.budget_id =:budget_id and unit_id = :unit_id",{:budget_id=>@budget.id,:unit_id=>current_user.unit.id})
    end
    
  end
  
  def rectory_index
    
    @budget = Budget.find_by_end_date(Budget.maximum(:end_date))
    
  end
  
  def unit_index
    
    @budget = Budget.find_by_end_date(Budget.maximum(:end_date))
    
    if current_user.unit && !@budget.nil? 
      @transfers = Transfer.joins(:resource).where("resources.budget_id =:budget_id and unit_id = :unit_id",{:budget_id=>@budget.id,:unit_id=>current_user.unit.id})
    end
    
  end
  
  
end
