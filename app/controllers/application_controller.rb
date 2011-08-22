class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def respond_with data, stream = false
    respond_to do |format|
      format.html { render :stream => stream} # index.html.erb
      format.json { render json: data }
    end    
  end
  
  def stream_with data
    respond_with data, true
  end
  
end
