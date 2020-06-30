class Profession < ApplicationRecord
  has_many :professionings, dependent: :destroy
  has_many :users, through: :professionings
end
