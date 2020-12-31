# frozen_string_literal: true

class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :bio, :image, :following

  def image
    object.image || 'https://static.productionready.io/images/smiley-cyrus.jpg'
  end

  def following
    current_user&.following?(object)
  end

end
