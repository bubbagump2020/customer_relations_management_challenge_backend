class RemoveUpdatedAtFromClients < ActiveRecord::Migration[6.0]
  def change
    remove_column :clients, :updated_at, :timestamps
  end
end
