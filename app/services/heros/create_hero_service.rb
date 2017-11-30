module Heros
  class CreateHeroService
    attr_reader :hero_raw

    def initialize(hero_raw:)
      @hero_raw = clean_hero_raw hero_raw
    end

    def execute
      hero = Hero.where(raw_id: hero_raw['id']).first_or_initialize
      if hero_raw['abilities'].present?
        hero_raw['abilities'].each do |ability_raw|
            ability = hero.abilities.where(raw_id: ability_raw['id']).first_or_initialize
            ability_raw.delete 'id'
            ability.assign_attributes(ability_raw)
        end
        hero_raw.delete 'abilities'
      end
      hero_raw.delete 'id'
      hero.update_attributes(hero_raw)
    end

    private

    def clean_hero_raw(hero_raw)
      hero_raw.delete 'role'
      hero_raw.delete 'sub_roles'
      hero_raw.delete 'rewards'
      hero_raw
    end
  end
end
