class TodoList
  def initialize
    @incompleted_entries = []
    @completed_entries = []
  end

  def add(todo) # todo is an instance of Todo
    if todo.done? == true
      @completed_entries << todo.task
    else
      @incompleted_entries << todo.task
    end
    # Returns nothing
  end

  def incomplete
    return @incompleted_entries.join("\n")
    # Returns all non-done todos
  end

  def complete
    return @completed_entries.join("\n")
    # Returns all complete todos
  end

  def give_up!
    @completed_entries << @incompleted_entries
    # Marks all todos as complete
  end
end