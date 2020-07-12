class User < ApplicationRecord
  has_many :professionings, dependent: :destroy
  has_many :interestings, dependent: :destroy
  has_many :professions, through: :professionings
  has_many :interests, through: :interestings

  mount_base64_uploader :avatar, AvatarUploader

  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  FULLNAME_REGEX = /\A[a-zA-Z0-9_-]{3,30}\z/

  # validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  # validates :first_name, presence: true
  # validates :last_name, presence: true

  def all_interests=(names)
    self.interests = names.split(',').map do |name|
      Interest.where(name: name).first_or_create!(name: name)
    end
  end

  def all_interests
    interests.map(&:name).join(", ")
  end

  def all_professions=(names)
    self.professions = names.split(',').map do |name|
      Profession.where(name: name).first_or_create!(name: name)
    end
  end

  def all_professions
    professions.map(&:name).join(", ")
  end

  def self.with_profession(name)
    Profession.find_by!(name: name).users
  end

  def self.with_interest(name)
    Interest.find_by!(name: name).users
  end
end
