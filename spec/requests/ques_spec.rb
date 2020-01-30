require 'rails_helper'

RSpec.describe "Ques", type: :request do
  describe "GET /ques" do
    it "works! (now write some real specs)" do
      get ques_path
      expect(response).to have_http_status(200)
    end
  end
end
