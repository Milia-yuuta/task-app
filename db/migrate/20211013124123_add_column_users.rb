class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :boolean
  end
end
