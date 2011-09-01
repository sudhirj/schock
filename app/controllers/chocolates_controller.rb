class ChocolatesController < ApplicationController

  def index
    @chocolates = Chocolate.all
  end

  def show
    @chocolate = Chocolate.find(params[:id])    
  end

  def new
    @chocolate = Chocolate.new
  end

  def edit
    @chocolate = Chocolate.find(params[:id])
  end

  def create
    @chocolate = Chocolate.new(params[:chocolate])
    if @chocolate.save
      redirect_to @chocolate, notice: 'Chocolate was successfully created.'         
    else
      render action: "new" 
    end
  end

  def update
    @chocolate = Chocolate.find(params[:id])
    if @chocolate.update_attributes(params[:chocolate])
      redirect_to @chocolate, notice: 'Chocolate was successfully updated.' 
    else
      render action: "edit"
    end
  end

  def destroy
    @chocolate = Chocolate.find(params[:id])
    @chocolate.destroy
    redirect_to chocolates_url
  end
end
