class Interest < ApplicationRecord
  has_many :interestings, dependent: :destroy
  has_many :users, through: :interestings
end
