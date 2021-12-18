class UsersController < SecuredController
  # skip_before_action :authorize_request, only: %i[index show]

  # GET /users
  def index
    users = User.all
    render json: users
  end
  
  # GET /users/1
  def show
    user = User.find_by(name: params[:id])
    render json: user
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  # POST /users
  def create
    user = User.create!(user_params)
    render json: user, status: :created
  end

  # DELETE /users/1
  def destroy
    user = User.find(params[:id])
    user.delete
    head :no_content
  end

  private
    def user_params
      params.permit(:user_sub, :email)
    end
end
