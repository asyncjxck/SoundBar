class BrandsController < ApplicationController
  before_action :require_login
  
  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
    @category = Category.all
  end
  
  def create
      @category = Category.all
      @brand = Brand.create(brand_params)
      if @brand.save
        redirect_to brands_path(@brand)
      else
        render :new
      end
  end

  def show
    @brand = Brand.find(params[:format])
  end

  def string
    @brands = Brand.string
    render :index
  end

  def keyboard
    @brands = Brand.keyboard
    render :index
  end

  def percussion
    @brands = Brand.percussion
    render :index
  end

  private

  def brand_params
      params.require(:brand).permit(:name, :category_id)
  end
end