class CurrentUserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :description, :avatar, :all_professions, :all_interests
end
