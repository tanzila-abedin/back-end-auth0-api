class ReviewsController < SecuredController
  skip_before_action :authorize_request, only: %i[index show]

  # GET /reviews
  def index
    user_sub = request.headers['body']
    fab = User.find_by(user_sub: user_sub)
    review = fab.reviews
    render json: review
  end

  # GET /reviews/1
  def show
    review = Review.where(laptop_id: params[:id])
    render json: review
  end

  # POST /reviews
  def create
    review = Review.create!(review_params)

    render json: review, status: :created
  end

  # DELETE /reviews/1
  def destroy
    review = Review.find(params[:id])
    review.delete
    render json: review
  end

  private

  def review_params
    reviews = params.permit(:user_email, :laptop_model, :title, :description, :rating, :user_id, :laptop_id)
    fab = User.find_by(user_sub: params[:user_sub])
    reviews[:user_id] = fab.id
    reviews
  end
end
