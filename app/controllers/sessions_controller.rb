class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:password].downcase)
    if user #&& user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to('/')
    else
      render 'new'
    end
  end

end
