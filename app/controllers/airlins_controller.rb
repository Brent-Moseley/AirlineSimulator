class AirlinsController < ApplicationController
  # GET /airlins
  # GET /airlins.json
  def index
    @airlins = Airlin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @airlins }
    end
  end

  # GET /airlins/1
  # GET /airlins/1.json
  def show
    @airlin = Airlin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @airlin }
    end
  end

  # GET /airlins/new
  # GET /airlins/new.json
  def new
    @airlin = Airlin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @airlin }
    end
  end

  # GET /airlins/1/edit
  def edit
    @airlin = Airlin.find(params[:id])
  end

  # POST /airlins
  # POST /airlins.json
  def create
    @airlin = Airlin.new(params[:airlin])

    respond_to do |format|
      if @airlin.save
        format.html { redirect_to @airlin, notice: 'Airlin was successfully created.' }
        format.json { render json: @airlin, status: :created, location: @airlin }
      else
        format.html { render action: "new" }
        format.json { render json: @airlin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /airlins/1
  # PUT /airlins/1.json
  def update
    @airlin = Airlin.find(params[:id])

    respond_to do |format|
      if @airlin.update_attributes(params[:airlin])
        format.html { redirect_to @airlin, notice: 'Airlin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @airlin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airlins/1
  # DELETE /airlins/1.json
  def destroy
    @airlin = Airlin.find(params[:id])
    @airlin.destroy

    respond_to do |format|
      format.html { redirect_to airlins_url }
      format.json { head :no_content }
    end
  end
end
