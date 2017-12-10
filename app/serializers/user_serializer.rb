class UserSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :image_url, :introduction
end
