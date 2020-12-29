# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index # rubocop:disable Metrics/AbcSize
    @articles = Article.all.includes(:author).order(created_at: :desc)

    @articles = @articles.tagged_with(params[:tag]) if params[:tag].present?
    @articles = @articles.authored_by(params[:author]) if params[:author].present?
    @articles = @articles.favorited_by(params[:favorited]) if params[:favorited].present?

    @articles_count = @articles.count

    @articles = @articles.paginate(pagination_options)
  end

  def feed
    @articles = Article.includes(:author).where(author: current_user.following_users)

    @articles_count = @articles.count

    @articles = @articles.order(created_at: :desc).offset(params[:offset] || 0).limit(params[:limit] || 20)

    render :index
  end

  def create
    @article = Article.new(article_params.to_h.merge(author: current_user))

    if @article.save
      render :show
    else
      render json: { errors: @article.errors }, status: :unprocessable_entity
    end
  end

  def show
    @article = Article.find_by!(slug: params[:slug])
  end

  def update
    @article = Article.find_by!(slug: params[:slug])

    if @article.user_id == @current_user_id
      @article.update(article_params)

      render :show
    else
      render json: { errors: { article: ['not owned by user'] } }, status: :forbidden
    end
  end

  def destroy
    @article = Article.find_by!(slug: params[:slug])

    if @article.user_id == @current_user_id
      @article.destroy

      render json: {}
    else
      render json: { errors: { article: ['not owned by user'] } }, status: :forbidden
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :description, tag_list: [])
  end

  private

  def pagination_options
    {
      page: params[:page] || 1,
      per_page: params[:per_page] || 50
    }
  end
end
