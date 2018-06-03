class Pattern
  include HTTParty

  base_uri "http://search.spoonflower.com"
  format :json

  def self.search_by(options = {})
    get("/searchv2/designs", query: options)["results"]
  end
end