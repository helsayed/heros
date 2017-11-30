module Api
  class AbilitiesController < ApplicationController
    before_action :set_ability, only: [:show]
    def index
      @abilities = if params[:hero_id]
        Ability.where(hero_id: params[:hero_id])
      else
        Ability.all
      end
      json_response(@abilities)
    end
     # GET /heros/:id
    def show
      json_response(@ability)
    end

    def fetching_heros
      Heros::fetching_heros_service.new.execute
    end

    private
    def set_ability
      @ability = Ability.find(params[:id])
    end
  end
end
