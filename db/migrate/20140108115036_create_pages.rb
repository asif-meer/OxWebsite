class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :page_name
      t.string :page_url
      t.integer :category_id
      t.integer :status
      t.timestamps
    end
  end
end
