class RenameProffesionsToProfessions < ActiveRecord::Migration[6.0]
  def change
    rename_table :proffesions, :professions
  end
end
