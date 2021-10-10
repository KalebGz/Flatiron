class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :current_user, only: [:new, :create]

    # not sure if we need an index page to show all the users
    def index
        @users = User.all
    end

    # profile page
    def show
        @post = Post.new
        @emoticons = Emoticon.all 
        render 'self_show'
    end

    def foreign_show
        @user = User.find(params[:id])
        render 'foreign_show'
    end

    

    def new
        @user = User.new
    end

    def create
        @user = User.new(username: user_params[:username], name: user_params[:name], image: user_params[:image], bio: user_params[:bio], password: user_params[:password], password_confirmation: user_params[:password_confirmation],)
        user_params[:name] = @user.capitalize_profile_name(user_params[:name]) 
        @user.name = user_params[:name]
        byebug
           if @user.valid? 
                @user.save
                session[:user_id] = @user.id 
                redirect_to user_path(@user)
            else
                flash[:errors] = @user.errors.full_messages
                redirect_to new_user_path
            end
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
        # needs validations
    end

    # once you delete your account, redirects you to create a new one
        # or should it redirect you to the home page of the main app?
    def destroy
        @user.destroy 
        redirect_to root_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :name, :bio, :image, :password, :password_confirmation)
    end

    def find_user
        @user = User.find(session[:user_id])
    end

    # maybe have the validation as a spearte method to call instead of putting inside each action

end
