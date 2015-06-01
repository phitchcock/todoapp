require 'rails_helper'

describe Todo do
  it 'saves itself' do 
    todo = Todo.new(name: 'first one')

    todo.save

    expect(Todo.first).to eq(todo)
  end

  it "does not save a todo without a name" do
    Todo.create(name: '')

    expect(Todo.count).to eq(0)
  end

  it "has many tags" do
    todo = Todo.create(name: 'first todo')
    tag1 = Tag.create(title: 'one', todo: todo)
    tag2 = Tag.create(title: 'two', todo_id: todo.id)

    expect(todo.tags).to eq([tag1, tag2])
  end

end