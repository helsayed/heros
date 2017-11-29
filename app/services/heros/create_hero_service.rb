module Heros
  class CreateHeroService
    attr_reader :hero_raw
    def initialize(hero_raw:)
      @hero_raw = hero_raw
    end

    def execute
      hero = Hero.where(id: hero_raw['id']).first_or_initialize
      hero.update_attributes(hero_raw)
    end
  end
end
