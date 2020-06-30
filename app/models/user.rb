class User < ApplicationRecord
  has_many :professionings, dependent: :destroy
  has_many :interestings, dependent: :destroy
  has_many :professions, through: :professionings
  has_many :interests, through: :interestings

  def self.with_profession(name)
    Profession.find_by!(name: name).users
  end

  def self.with_interest(name)
    Interest.find_by!(name: name).users
  end

end
