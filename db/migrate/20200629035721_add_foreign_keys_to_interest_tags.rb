class AddForeignKeysToInterestTags < ActiveRecord::Migration[6.0]
  def change
    add_reference :interest_tags, :user, foreign_key: true
    add_reference :interest_tags, :interest, foreign_key: true
  end
end
