require 'rails_helper'

describe TodoTag, type: :model do
  it "saves itself" do
    todo = Todo.create(name: 'one')
    tag = Tag.create(title: 'two')
    todo_tag = TodoTag.create(todo: todo, tag: tag)

    expect(TodoTag.first).to eq(todo_tag)
  end

  it "belongs_to todo" do
    todo = Todo.create(name: 'one')
    tag = Tag.create(title: 'two')
    todo_tag = TodoTag.create(todo: todo, tag: tag)

    expect(todo.todo_tags).to eq([todo_tag])
    expect(todo_tag.todo).to eq(todo)
  end

  it "belongs_to todo" do
    todo = Todo.create(name: 'one')
    tag = Tag.create(title: 'two')
    todo_tag = TodoTag.create(todo: todo, tag: tag)

    expect(tag.todo_tags).to eq([todo_tag])
    expect(todo_tag.tag).to eq(tag)
  end
end