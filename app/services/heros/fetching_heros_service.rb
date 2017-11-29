module Heros
  require 'rest-client'

  class FetchingHerosService
    attr_reader :fetch_url
    def initialize
      @fetch_url = 'https://overwatch-api.net/api/v1/hero/'
    end

    def execute
      response = RestClient.get(fetch_url)
      heros = JSON.parse(response.body['data'])
      heros.each do |hero_raw|
        Heros::CreateHeroService(hero_raw: hero_raw).new.execute
      end
    end

  end
end
