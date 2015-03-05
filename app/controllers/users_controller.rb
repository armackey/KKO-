class UsersController < ApplicationController
  after_filter :allow_iframe, only: :my_embeddable_widget
  # POST /users
  # POST /users.json
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
 
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver_now
 
        format.html { redirect_to(contact_path, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  # def my_embeddable_widget
  #   render
  # end

  private
  def user_params
    params.require(:user).permit(:name, :content, :email, :lastname, :subject)
  end
end
