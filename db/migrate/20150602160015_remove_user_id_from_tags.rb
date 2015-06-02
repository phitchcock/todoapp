class RemoveUserIdFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :user_id
    add_column :todos, :user_id, :integer
  end
end
