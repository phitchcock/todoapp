require 'rails_helper'

RSpec.describe User, type: :model do
  it "saves itself" do
    user = User.new(email: "me@me.com", password: "password")
    user.save
    expect(User.first).to eq(user)
  end

  it "has_many todos" do
    user = User.create(email: "me@me.com", password: "password")
    todo1 = Todo.create(name: 'first todo', user: user)
    todo2 = Todo.create(name: 'second todo', user: user)

    expect(user.todos).to eq([todo1, todo2])
    expect(todo1.user).to eq(user)
  end
end
