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

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_laptop
    @laptop = Laptop.find(params[:id])
  end
end
