class CreateArchives < ActiveRecord::Migration[6.0]
  def change
    create_table :archives do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.boolean :created_by_admin

      t.timestamps
    end
  end
end
