class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
     redirect_to controller: 'sessions', action: 'new'   
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    # binding.pry
    if session[:name]
      session.delete :name
    end
  end

end
