class MountainsController < ApplicationController
  before_action :set_mountain, only: [:show, :edit, :update, :destroy]

  def index
    @mountains = Mountain.all
  end

  def show
  end

  private

  def set_mountain
    @mountain = Mountain.find(params[:id])
  end


end