# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Articles' do
  describe '#index' do
    it 'returns all Articles' do
      create_list(:article, 3)
      user = create(:user)

      sign_in(user)
      get '/api/articles'
      expect(json_body.keys).to eq(['articles', 'articles_count'])
      expect(json_body['articles'].size).to eq(3)

      expect(json_body['articles'].first.keys).to match_array(
        [
          'slug', 'title', 'description', 'body',
          'tagList', 'createdAt', 'updatedAt',
          'favorited', 'favoritesCount', 'author'
        ]
      )
      expect(json_body['articles'].first['author'].keys).to match_array(
        ['username', 'bio', 'image', 'following']
      )
    end
  end
end
