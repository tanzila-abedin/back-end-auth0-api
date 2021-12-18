class ReviewsController < SecuredController
  skip_before_action :authorize_request, only: %i[index show]

  # GET /reviews
  def index
    user_sub = request.headers["body"]
    fab =  User.find_by(user_sub: user_sub) 
    review = fab.reviews
    render json: review
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  # GET /reviews/1
  def show
    review = Review.where(laptop_id: params[:id])
    render json: review
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  # def userReviews 
  #   fab =  User.find_by(user_sub: params[:user_sub]) 
  #   review = fab.reviews
  #   render json: review
  # rescue ActiveRecord::RecordNotFound
  #   head :not_found
  # end 

  # POST /reviews
  def create
    fab =  User.find_by(user_sub: params[:user_sub]) 
    review = Review.create!(user_email: params[:user_email], laptop_model: params[:laptop_model], title: params[:title], description: params[:description], rating: params[:rating], user_id: fab.id, laptop_id: params[:laptop_id])
    render json: review, status: :created
  end

  # PATCH/PUT /reviews/1
  # def update
  #   if @review.update(review_params)
  #     render json: @review
  #   else
  #     render json: @review.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /reviews/1
  def destroy
    review = Review.find(params[:id])
    review.delete
    # head :no_contentrev
    render json: review
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_review
    #   @review = Review.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    # def review_params
    #   params.permit(:title, :description, :rating, :user_id, :laptop_id)
    # end
end
