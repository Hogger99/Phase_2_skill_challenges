class Todo
  def initialize(task) # task is a string
    @task = task.to_s
    @done_task = false
    # ...
  end

  def task
    return @task
    # Returns the task as a string
  end

  def mark_done!
    @done_task = true
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    return @done_task
    # Returns true if the task is done
    # Otherwise, false
  end
end