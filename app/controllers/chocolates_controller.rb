class ChocolatesController < ApplicationController

  def index
    @chocolates = Chocolate.all
    stream_with @chocolates
  end

  def show
    @chocolate = Chocolate.find(params[:id])    
    stream_with @chocolate
  end

  def new
    @chocolate = Chocolate.new
    respond_with @chocolate 
  end

  def edit
    @chocolate = Chocolate.find(params[:id])
  end

  def create
    @chocolate = Chocolate.new(params[:chocolate])

    respond_to do |format|
      if @chocolate.save
        format.html { redirect_to @chocolate, notice: 'Chocolate was successfully created.' }
        format.json { render json: @chocolate, status: :created, location: @chocolate }
      else
        format.html { render action: "new" }
        format.json { render json: @chocolate.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @chocolate = Chocolate.find(params[:id])

    respond_to do |format|
      if @chocolate.update_attributes(params[:chocolate])
        format.html { redirect_to @chocolate, notice: 'Chocolate was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @chocolate.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @chocolate = Chocolate.find(params[:id])
    @chocolate.destroy

    respond_to do |format|
      format.html { redirect_to chocolates_url }
      format.json { head :ok }
    end
  end
end
