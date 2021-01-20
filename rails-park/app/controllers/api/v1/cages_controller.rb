class Api::V1::CagesController < ApplicationController

  # GET /cages
  def index
  end
  # GET /cage/:id
  def show
  end
  # POST /cages
  def create
  end
  # PUT /cages/:id
  def update
  end
  # DELETE /cages/:id
  def destroy
  end

  private

  def cage_params
    params.require(:user).permit(:powerOn)
end
