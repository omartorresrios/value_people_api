class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :links
      t.string :email
      t.string :avatar

      t.timestamps
    end
  end
end
