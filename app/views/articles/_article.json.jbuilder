# frozen_string_literal: true

json.call(article, :title, :slug, :body, :description)
json.createdAt(article.created_at)
json.updatedAt(article.updated_at)
json.tagList(article.tag_list)
json.author(article.author, partial: 'profiles/profile', as: :user)
json.favorited(!!current_user&.favorited?(article))
json.favoritesCount(article.favorites_count || 0)
