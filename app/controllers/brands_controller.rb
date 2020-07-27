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
        redirect_to brand_instruments_path(@brand)
      else
        render :new
      end
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    @brand.update(params.require(:brand).permit(:name, :category))
    redirect_to brand_instruments_path(@brand)
  end
  
  def show
    @brand = Brand.find(params[:id])
    @instruments = @brand.instruments
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