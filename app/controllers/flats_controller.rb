class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params_flat)
    @flat.save
    redirect_to flats_path
  end

  def edit
  end

  def update
    @flat.update(params_flat)
    redirect_to flats_path
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def params_flat
    params.require(:flat).permit(:name, :address, :price_per_night, :number_of_guests, :description)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
