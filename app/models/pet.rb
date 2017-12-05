class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :kind
  enum gender: { male: 0, female: 0 }
end
