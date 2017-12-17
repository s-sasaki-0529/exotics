class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :kind
  enum gender: { male: 0, female: 1, unknown: 2 }
end
