class LaptopsController < SecuredController
    skip_before_action :authorize_request, only: %i[index show]


  # GET /laptops
  def index
    @laptops = Laptop.all

    render json: @laptops
  end

  # GET /laptops/1
  def show
    laptop = Laptop.find_by(id: params[:id])
    render json: laptop
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  # POST /laptops
  def create
    laptop =  Laptop.create!(laptop_params)
    render json: laptop, status: :created
  end

  # # PATCH/PUT /laptops/1
  # def update
  #   if @laptop.update(laptop_params)
  #     render json: @laptop
  #   else
  #     render json: @laptop.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /laptops/1
  def destroy
    laptop = Laptop.find(params[:id])
    laptop.delete
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laptop
      @laptop = Laptop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def laptop_params
      params.require(:laptop).permit(:name, :model, :slug )
    end
end
