class Recipe < ApplicationRecord
  belongs_to :user, foreign_key: :owner_id
  has_and_belongs_to_many :users
end
