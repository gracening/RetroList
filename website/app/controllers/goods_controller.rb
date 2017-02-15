class GoodsController < ActionController::API
  before_action :set_good, only: [:show, :update, :destroy]

  # GET /goods
  # GET /goods.json
  def index
    @goods = Good.all
    render json: @goods
  end

  # GET /goods/1
  # GET /goods/1.json
  def show
    set_good
    render json: @good
  end

  # POST /goods
  # POST /goods.json
  def create
    @good = Good.new(good_params)

    if @good.save
      render json: :index, status: :created, location: @good
    else
      render json: @good.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goods/1
  # PATCH/PUT /goods/1.json
  def update
    set_good
    if @good.update(good_params)
      render json: :index, status: :ok, location: @good
    else
      render json: @good.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goods/1
  # DELETE /goods/1.json
  def destroy
    set_good
    @good.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good
      @good = Good.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def good_params
      params.require(:good).permit(:id, :author, :date, :body, :team)
    end
end
