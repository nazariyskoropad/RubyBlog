class AddAccosiationsBetweenPostsAndCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :category_id, :integer
    add_foreign_key :posts, :categories
  end
end
