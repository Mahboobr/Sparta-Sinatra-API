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
    it "displayname for the first instance should be a string" do
      expect(@response.test_display_name).to be_a(String)
    end
    it "elapsed time should be greater than 0)" do
      expect(@response.test_elasped_time).to be >(0)
    end
    it "Number of results should be less than 20" do
      expect(@response.test_result.length).to be <(15)
    end
    it "Number of keys in result hash 1 should be 9" do
      expect(@response.test_result_hash.length).to eq(9)
    end
    it "url_name should contain a '-'" do
      expect(@response.test_url_name).to include('-')
    end
    it "votes should be an Int" do
      expect(@response.test_total_votes).to be_an(Integer)
    end
    it "entityID should be an Int" do
      expect(@response.test_entity_id).to be_an(Integer)
    end
    it "userID should be an int" do
      expect(@response.test_user_id).to be_an(Integer)
    end

end
