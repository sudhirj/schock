class ChocolatesController < ApplicationController
  # GET /chocolates
  # GET /chocolates.json
  def index
    @chocolates = Chocolate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chocolates }
    end
  end

  # GET /chocolates/1
  # GET /chocolates/1.json
  def show
    @chocolate = Chocolate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chocolate }
    end
  end

  # GET /chocolates/new
  # GET /chocolates/new.json
  def new
    @chocolate = Chocolate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chocolate }
    end
  end

  # GET /chocolates/1/edit
  def edit
    @chocolate = Chocolate.find(params[:id])
  end

  # POST /chocolates
  # POST /chocolates.json
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

  # PUT /chocolates/1
  # PUT /chocolates/1.json
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

  # DELETE /chocolates/1
  # DELETE /chocolates/1.json
  def destroy
    @chocolate = Chocolate.find(params[:id])
    @chocolate.destroy

    respond_to do |format|
      format.html { redirect_to chocolates_url }
      format.json { head :ok }
    end
  end
end
