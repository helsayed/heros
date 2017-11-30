module Heros
  require 'rest-client'

  class FetchingHeroDataService
    attr_reader :fetch_url
    def initialize(hero_id:)
      @fetch_url = "https://overwatch-api.net/api/v1/hero/#{hero_id}"
    end

    def execute
      response = RestClient.get(fetch_url)
      hero_raw = JSON.parse(response.body)
      Heros::CreateHeroService.new(hero_raw: hero_raw).execute
    end

  end
end
