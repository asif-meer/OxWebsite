class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :container_id
      t.string :container_type

      t.timestamps
    end
    add_index :articles, [:container_type, :container_id]
  end
end
