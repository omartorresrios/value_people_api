class AddIsSelectedToProfessions < ActiveRecord::Migration[6.0]
  def change
    add_column :professions, :isSelected, :boolean, default: false
  end
end
