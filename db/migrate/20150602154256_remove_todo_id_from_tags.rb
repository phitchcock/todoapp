class RemoveTodoIdFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :todo_id
  end
end
