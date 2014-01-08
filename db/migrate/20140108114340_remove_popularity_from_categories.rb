class RemovePopularityFromCategories < ActiveRecord::Migration
  def up

    add_column :categories, :parent_category_id, :integer
    add_column :categories, :status, :integer
  end

  def down
    remove_column :categories, :parent_category_id
    remove_column :categories, :status
  end
end
