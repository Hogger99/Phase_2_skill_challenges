# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

class TaskManager
  def initialize
    @tsk = []
    @todo = []
  end

  def add(tsk)
    # if tsk does not include #TODO then dont add it to @tsk list
    unless tsk.split(" ").include? "#TODO"
      @tsk << tsk
    else 
      @todo << tsk
    end

  end

  def output
    if @todo == []
      return @tsk
    else 
      return "[#{@tsk.join(", ")}], [#{@todo.join(", ")}]"
    end
  end
end