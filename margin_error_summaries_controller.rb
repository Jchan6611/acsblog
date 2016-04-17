class MarginErrorSummariesController < ApplicationController

 def index 
  end
  
  def search
    if params[:state].upcase=="ALL"
       	@margin_error_summaries = Margin_error_summary.all.order("state")
    else
    	@margin_error_summaries = Margin_error_summary.where("STATE = ?", params[:state].upcase)
    end
      respond_to do |format|
      format.html{}
     end
  end

end
