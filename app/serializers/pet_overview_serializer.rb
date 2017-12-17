class PetOverviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :kind_id, :name, :gender, :birthday, :description, :image_url
end
