class RemoveCreatedAtFromClients < ActiveRecord::Migration[6.0]
  def change
    remove_column :clients, :created_at, :timestamps
  end
end
