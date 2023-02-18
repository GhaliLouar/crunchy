class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @burgers = Burger.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @burgers = Burger.all
    end

  end
end
