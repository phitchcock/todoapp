json.todos @todos do |todo|
  json.name todo.name
  json.user todo.user
  json.id todo.id
  json.tags todo.tags
  json.todo_tags todo.todo_tags
end