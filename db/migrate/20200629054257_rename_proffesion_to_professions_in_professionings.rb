class RenameProffesionToProfessionsInProfessionings < ActiveRecord::Migration[6.0]
  def change
    rename_column :professionings, :proffesion_id, :profession_id
  end
end
