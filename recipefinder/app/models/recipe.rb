class Recipe < ActiveRecord::Base
  include HTTParty

  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT']

  default_options.update(verify: false)
  base_uri "http://#{hostport}/api"
  default_params key: key_value
  format :json

  disable_rails_query_string_format

  def self.for(term)
    get('/search', query: {q: term})["recipes"]
  end
end
