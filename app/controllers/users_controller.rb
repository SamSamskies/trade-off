class UsersController < ApplicationController
  respond_to :html

  def new
    @user = User.new
  end

  def create
    @notice = "Error"
    @user = sign_up(name: user_params[:name],
                    email: user_params[:email],
                    postal_code: user_params[:postal_code],
                    password: user_params[:password])

    if @user.valid?

      # TODO: provision and category should actually be created as callbacks in model
      provision = @user.provisions.create description: user_params[:provision]

      if provision.valid?
        @success = true
        provision.update category: Category.find_by(name: user_params[:category])

        @notice = "success"

        sign_in(@user)

        # sign_in(@user) do
        #   respond_with(@user, location: root_path) and return
        # end
      end
    end

    redirect_to root_path, notice: @notice unless request.xhr?

  end

  def show
    @user = User.find(params[:id])
    @categories = Category.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :postal_code, :provision, :category, :password)
  end
end

