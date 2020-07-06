class AddIsSelectedToInterests < ActiveRecord::Migration[6.0]
  def change
    add_column :interests, :isSelected, :boolean, default: false
  end
end
