class RenameProffesionTagToProffesionings < ActiveRecord::Migration[6.0]
  def change
    rename_table :proffesion_tags, :professionings
  end
end
