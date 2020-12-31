# frozen_string_literal: true

class ArticleSerializer < ActiveModel::Serializer
  attributes :slug, :title, :description, :body, :tag_list, :created_at, :updated_at,
             :favorited, :favorites_count

  belongs_to :author, serializer: ProfileSerializer

  def favorited
    !!current_user&.favorited?(object)
  end
end
