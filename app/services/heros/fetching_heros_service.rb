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
      Heros::CreateHeroService(heros: heros).new.execute
    end

  end
end
