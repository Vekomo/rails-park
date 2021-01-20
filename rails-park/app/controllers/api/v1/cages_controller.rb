class Api::V1::CagesController < ApplicationController

  # GET /cages
  def index
    @cages = Cage.all
    render json: @cages
  end
  # GET /cage/:id
  def show
    @cage = Cage.find(params[:id])
  end
  # POST /cages
  def create
    @cage = Cage.new(cage_params)
    if @cage.save
      render json: @cage
    else
      render error: {error: 'Unable to create Cage.'}, status: 400
    end
  end
  # PUT /cages/:id
  def update
    @cage = Cage.find(params[:id])
    if @cage
      @cage.update(cage_params)
      render json: {message: 'Cage successfully updated.'}, status: 200
    else
      render json: {error: 'Unable to update cage.'}, status:400
    end
  end
  # DELETE /cages/:id
  def destroy
    @cage = Cage.find(params[:id])
    if @cage
      @cage.destroy
      render json: {message: 'cage successfully deleted.'}, status: 200
    else
      render json: {error: 'Unable to delete cage.'}, status: 400
    end
  end

  private

  def cage_params
    params.require(:cage).permit(:maxCapacity, :currCapacity, :powerOn)
  end
end
