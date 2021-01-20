class Api::V1::DinosController < ApplicationController
  before_action :find_dino, only: [:show, :update, :desroy]

  def index
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def dino_params
    params.require(:dino).permit(:name, :species, :isCarnivore, :cage_id)
  end

  def find_dino
    @dino = Dino.find(params[:id])
end
