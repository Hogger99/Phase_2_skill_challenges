require "todo"

RSpec.describe Todo do
  it "returns task as a string" do
  todo_entry1 = Todo.new("This is my first entry")
  expect(todo_entry1.task).to eq "This is my first entry"
  end

  it "marks the todo as done and returns todo if it is done" do
    todo_entry1 = Todo.new("This is my first entry")
    todo_entry2 = Todo.new("This is my second entry")
    todo_entry1.mark_done!
    expect(todo_entry1.done?).to eq true
    expect(todo_entry2.done?).to eq false
    end
end  