class ContactsController < ApplicationController

  def new
    
  end
  def create

    cname = params[:name]
    cemail = params[:email]
    cmessage = params[:message]

    flash[:notice] = "訊息已送出！"
    
    CustomerMailer.welcome_email(cname, cemail, cmessage).deliver

    redirect_to root_path
  end
end