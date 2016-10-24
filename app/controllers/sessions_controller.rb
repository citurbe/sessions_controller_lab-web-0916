class SessionsController < ApplicationController

  def new
    render :'/sessions/new.html'
  end

  def create
    if params[:name] != "" && params[:name] != nil
      session[:name] = params[:name]
      redirect_to '/'

    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end



end
