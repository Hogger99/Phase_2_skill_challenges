require "task_manager"

RSpec.describe TaskManager do
  it "recall tasks if @todo is empty" do
    task_manager = TaskManager.new
    task_manager.add("Do some coding")
    task_manager.add("Do some writing")
    expect(task_manager.output).to eq ["Do some coding", "Do some writing"]
  end
  it "if @todo is not empty, show todo aswell" do
    task_manager = TaskManager.new
    task_manager.add("Do some coding")
    task_manager.add("#TODO some painting")
    task_manager.add("Do some writing")
    expect(task_manager.output).to eq "[Do some coding, Do some writing], [#TODO some painting]"
  end
  it "checks if @TODO can be found anywhere in the string" do
    task_manager = TaskManager.new
    task_manager.add("Do some coding")
    task_manager.add("Do some painting #TODO")
    task_manager.add("Do some writing")
    expect(task_manager.output).to eq "[Do some coding, Do some writing], [Do some painting #TODO]"
  end
end