class AddIndexToPostId < ActiveRecord::Migration
  def change
  	add_index :posts, [:id, :created_at]
  end
end
