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

  it "belongs_to a user" do
    user = User.create(email: "me@me.com", password: 'password')
    todo = Todo.create(name: 'second todo', user: user)

    expect(todo.user).to eq(user)
    expect(user.todos).to eq([todo])
  end

  it "has many tags through todo_tag" do
    todo = Todo.create(name: 'first todo')
    todo2 = Todo.create(name: 'second todo')
    tag1 = Tag.create(title: 'one')
    tag2 = Tag.create(title: 'two')

    #todo_tag = todo.todo_tags.build(tag: tag1)
    todo_tag2 = TodoTag.create(todo: todo, tag: tag1)

    expect(todo.todo_tags).to eq([todo_tag2])
    expect(todo.tags).to eq([tag1])
  end

end