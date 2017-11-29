module Heros
  class CreateHeroService
    attr_reader :heros
    def initialize(heros:)
      @heros = heros
    end

    def execute
      heros.each do |hero_raw|
        hero = Hero.where(id: hero_raw['id']).first_or_initialize
        hero.update_attributes(hero_raw)
      end
    end
  end
end
