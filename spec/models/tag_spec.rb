require 'rails_helper'

describe Tag, type: :model do
  it "saves itself" do
    tag = Tag.create(title: 'One')

    expect(Tag.first).to eq(tag)
  end

  it "does not save without a title" do
    Tag.create(title: '')

    expect(Tag.count).to eq(0)
  end

  it "has_many todo_tags" do
    tag = Tag.create(title: 'one')
    todo = Todo.create(name: 'two')
    todo_tag = TodoTag.create(todo: todo, tag: tag)

    expect(todo.todo_tags).to eq([todo_tag])
    expect(todo_tag.tag).to eq(tag)
  end
end