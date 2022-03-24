class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :stage
      t.string :phone
      t.string :company
      t.integer :probability

      t.timestamps
    end
  end
end
