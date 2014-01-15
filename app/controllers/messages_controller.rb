class MessagesController < ApplicationController

  def create
    email = params[:message][:email]
    @message = Message.new(email: email)

    if @message.save
      flash[:notice] = "Email saved. Prepare to be gratituded"
      redirect_to root_path
    else
      flash[:error] = "Email not valid"
      render '/'
    end
  end
end
