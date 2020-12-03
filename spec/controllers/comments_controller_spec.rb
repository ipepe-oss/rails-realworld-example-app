# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let(:user) do
    User.create(email: 'user@example.com', username: 'user', password: 'password')
  end

  describe 'POST create' do
    it 'creates a comment' do
      request.headers['Authorization'] = "Bearer #{user.generate_jwt}"
      post :create, params: {
        article_slug: 'abc'
      }

      expect(response).to be_success
    end
  end
end
