desc "fetching_heros"
task fetching_heros: :environment do
  Heros::FetchingHerosService.new.execute
  Hero.all.each do |hero|
    Heros::FetchingHeroDataService.new(hero_id: hero.id).execute
  end
end
