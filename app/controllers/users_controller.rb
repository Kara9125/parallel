class UsersController < ApplicationController
	before_action :current_user

  # form to create new user
  def new
  	if current_user
  	  redirect_to profile_path
  	else
  	@user = User.new
  	render :new
  	end
  end

 # creates new user in db
  def create
  	if current_user
  		redirect_to profile_path
  	else
  		user = User.new(user_params)
  	   if user.save
  	   	session[:user_id] = user.id
  	   	redirect_to interests_path
  	   else
  	   	redirect_to interests_path
  	   end
  	end
  end

  def interest
  	render "useres/interests"
  end

  def review
  	render "users/review"
  end


  # show current_user
  def show
  	@user = current_user

  	render :show
  end

  private
  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password)
  	end
end
