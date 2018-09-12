class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
  end

  def search_user
    if params[:user].present?
      @users = User.search(params[:user])
    else
      @users = User.all
    end
  end
end
