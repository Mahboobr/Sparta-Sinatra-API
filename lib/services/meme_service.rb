require 'httparty'
require 'json'



class MemeService
  attr_accessor :json_file

  include HTTParty

  base_uri 'http://version1.api.memegenerator.net//Generators_Select_ByPopular?pageIndex=0&pageSize'

  def json_response
    @json_file = JSON.parse(self.class.get("=12&days=&apiKey=eb6dfcb7-e29f-44e7-8aac-264669d3ecba").body)
  end

  def test_success
    # json_response["success"]
    @json_file["success"]
  end
  def test_generatorID
    @json_file["result"][0]["generatorID"]
  end
end
# x = MemeService.new
# puts x.json_response["result"][0]["generatorID"]
# puts x.test_success
