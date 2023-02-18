class Crunch::BurgerController < ApplicationController

  def index
    @burger = Burger.where(user: current_user).order(created_at: :desc)
  end
end
