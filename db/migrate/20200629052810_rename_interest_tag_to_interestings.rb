class RenameInterestTagToInterestings < ActiveRecord::Migration[6.0]
  def change
    rename_table :interest_tags, :interestings
  end
end
