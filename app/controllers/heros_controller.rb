class HerosController < ApplicationController
  before_action :set_hero, only: [:show, :update, :destroy]
  def index
    @heros = Hero.all
    json_response(@heros)
  end
   # GET /heros/:id
  def show
    json_response(@hero)
  end

  def fetching_heros
    Heros::fetching_heros_service.new.execute
  end

  private
  def set_hero
    @hero = Hero.find(params[:id])
  end
end
