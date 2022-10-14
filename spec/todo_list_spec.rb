require "todo_list"
require "todo"

RSpec.describe "todo_list and todo intergration" do
  it "it can add and retrieve all incomplete todo into todo_list" do
    todo_entry1 = Todo.new("This is my first entry")
    todo_entry2 = Todo.new("This is my second entry")
    todo_list = TodoList.new
    todo_list.add(todo_entry1)
    todo_list.add(todo_entry2)
    expect(todo_list.incomplete).to eq "This is my first entry\nThis is my second entry"
  end

  it "it adds and retrieves all complete todo into todo_list" do
    todo_entry1 = Todo.new("This is my first entry")
    todo_entry2 = Todo.new("This is my second entry")
    todo_entry3 = Todo.new("This is my third entry")
    todo_list = TodoList.new
    todo_entry1.mark_done!
    todo_entry2.mark_done!
    todo_list.add(todo_entry1)
    todo_list.add(todo_entry2)
    todo_list.add(todo_entry3)
    expect(todo_list.complete).to eq "This is my first entry\nThis is my second entry"
  end
  it "adds complete and incomplete todos, then uses .give_up!" do
    todo_entry1 = Todo.new("This is my first entry")
    todo_entry2 = Todo.new("This is my second entry")
    todo_entry3 = Todo.new("This is my third entry")
    todo_list = TodoList.new
    todo_entry1.mark_done!
    todo_entry2.mark_done!
    todo_list.add(todo_entry1)
    todo_list.add(todo_entry2)
    todo_list.add(todo_entry3)
    todo_list.give_up!
    expect(todo_list.complete).to eq "This is my first entry\nThis is my second entry\nThis is my third entry"
  end
end