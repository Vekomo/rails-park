class Api::V1::DinosController < ApplicationController
  before_action :find_dino, only: [:show, :update, :desroy]

  def index
    @dinos = Dino.all
    render json: @dinos
  end

  def show
    render json: @dino
  end

  def create
    @dino = Dino.new(dino_params)
    if @dino.save
      render json: @dino
    else
      render error: {error: 'Unable to create dino.'}, status: 400
    end
  end

  def update
    if @dino
      @dino.update(dino_params)
      render json: {message: 'Dino successfully updated.'}, status: 200
    else
      render json: {error: 'Unable to update dino.'}, status:400
    end
  end

  def destroy
    if @dino
      @dino.destroy
      render json: {message: 'Dino successfully deleted.'}, status: 200
    else
      render json: {error: 'Unable to delete dino.'}, status: 400
    end
  end

  private

  def dino_params
    params.require(:dino).permit(:name, :species, :isCarnivore, :cage_id)
  end

  def find_dino
    @dino = Dino.find(params[:id])
  end
end
