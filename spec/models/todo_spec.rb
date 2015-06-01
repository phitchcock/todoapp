require 'rails_helper'

describe Todo do
  it 'saves itself' do 
    todo = Todo.new(name: 'first one')

    todo.save

    expect(todo.name).to eq('first one')
  end
end