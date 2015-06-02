class AddIndexesToTodoTags < ActiveRecord::Migration
  def change
    add_index :todo_tags, :todo_id
    add_index :todo_tags, :tag_id
  end
end
