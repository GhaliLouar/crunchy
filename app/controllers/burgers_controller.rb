class BurgersController < ApplicationController
  before_action :set_burger, only: [:show]

  def new
    @burger = Burger.new
  end

  def create
    @burger = Burger.new(burger_params)
    @burger.user = current_user
    if @burger.save
      redirect_to burger_path(@burger)
    else
      render :new
    end
  end

  def edit
    @burger = Burger.find(params[:id])
  end

  def update
    @burger = Burger.find(params[:id])
    @burger.update(burger_params)
    redirect_to burger_path(@burger)
  end

  def destroy
    @burger = burger.find(params[:id])
    @burger.destroy
    redirect_to root_path
  end

  def show
    set_burger
    @booking = Booking.new
  end


  private

  def set_burger
    @spaceship = Burger.find(params[:id])
  end

  def burger_params
    # j'ai ajouter 'image' au params. Ne pas oublier de l'enlever si inutile
    params.require(:burger).permit(:name, :description, :price, :image, :address)
  end
end
