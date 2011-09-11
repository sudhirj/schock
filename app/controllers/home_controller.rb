class HomeController < ApplicationController
  def index
    @chocolates = Chocolate.all
  end
end
