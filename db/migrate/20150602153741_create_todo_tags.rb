class CreateTodoTags < ActiveRecord::Migration
  def change
    create_table :todo_tags do |t|
      t.integer :todo_id
      t.integer :tag_id
      t.timestamps null: false
    end
  end
end
