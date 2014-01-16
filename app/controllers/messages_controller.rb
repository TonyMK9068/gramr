class MessagesController < ApplicationController

  def create
    email = params[:message]
    @message = Message.new(email: email[:email])

    if @message.save
      flash[:notice] = "Email saved. Prepare to be gratituded"
      redirect_to root_path
    else
      flash[:error] = "Email not valid"
      render 'welcome/index'
    end
  end
end
