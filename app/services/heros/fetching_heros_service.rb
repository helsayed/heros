module Heros
  require 'rest-client'

  class FetchingHerosService
    attr_reader :fetch_url
    def initialize
      @fetch_url = 'https://overwatch-api.net/api/v1/hero/'
    end

    def execute
      begin
        response = RestClient.get(fetch_url)
        heros = JSON.parse(response.body)['data']
        heros.each do |hero_raw|
          Heros::CreateHeroService.new(hero_raw: hero_raw).execute
        end
      rescue => e
        puts e.response
      end
    end
  end
end
