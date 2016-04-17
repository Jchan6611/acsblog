class EstimatesSummariesController < ApplicationController
  def index 
  end
  
  def search
    if params[:state].upcase=="ALL"
       	@estimates_summaries = Estimates_summary.all.order("state")
    else
    	@estimates_summaries = Estimates_summary.where("STATE = ?", params[:state].upcase)
    end
      respond_to do |format|
      format.html{}
     end
  end

end
