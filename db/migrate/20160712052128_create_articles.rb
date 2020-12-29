# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.string :description
      t.integer :favorites_count

      t.timestamps null: false
    end
    add_index :articles, :slug, unique: true

    add_belongs_to :articles, :author, foreign_key: { to_table: :users }
  end
end
