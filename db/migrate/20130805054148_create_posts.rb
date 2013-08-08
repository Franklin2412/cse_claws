class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

    	t.string :content
    	t.string :user_id
    	t.string :profile_id


     	t.timestamps
    end
    	add_index :posts, [:user_id, :created_at]
  end
end
