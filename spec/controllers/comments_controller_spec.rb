require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let(:user) do
    User.create(email: "user@example.com", username: "user", password: "password")
  end

  describe "POST create" do
    let(:params) do
      {
        article_slug: 'abc'
      }
    end

    it "creates a comment" do
      request.headers['Authorization'] = "Bearer #{user.generate_jwt}"
      post :create, params: params

      expect(response).to be_success
    end
  end
end
