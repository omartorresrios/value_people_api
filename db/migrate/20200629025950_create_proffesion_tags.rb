class CreateProffesionTags < ActiveRecord::Migration[6.0]
  def change
    create_table :proffesion_tags do |t|

      t.timestamps
    end
  end
end
