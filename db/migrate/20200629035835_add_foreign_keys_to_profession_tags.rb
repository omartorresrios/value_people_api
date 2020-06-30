class AddForeignKeysToProfessionTags < ActiveRecord::Migration[6.0]
  def change
    add_reference :proffesion_tags, :user, foreign_key: true
    add_reference :proffesion_tags, :proffesion, foreign_key: true
  end
end
