require 'spec_helper'

describe MemeAPI do

  before(:all) do
      @response = MemeAPI.new.meme_service
      @response.json_response
    end

    it "success should be true" do
      expect(@response.test_success).to eq(true)
    end
    it "GeneratorID should be an Integer" do
      expect(@response.test_generatorID).to be_an(Integer)
    end


end
