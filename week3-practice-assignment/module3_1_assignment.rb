require 'httparty'

class Recipe
  include HTTParty

  @food2fork_key = ENV['FOOD2FORK_KEY']

  disable_rails_query_string_format

  base_uri "http://food2fork.com/api"
  default_params key: @food2fork_key
  format :json

  def self.for (term)
    begin
      get('/search', query: {q: term})["recipes"]
    rescue HTTParty::RedirectionTooDeep => e
      puts e.response.body
    end
  end
end
