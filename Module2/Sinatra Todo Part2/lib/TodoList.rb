require 'yaml'
class TodoList
  attr_reader :tasks
  def initialize(user)
    @todo_store = YAML::Stream.new("public/tasks.yml")
    @tasks = []
    @user = user
  end
  def add_task(task)
    @tasks << task
  end
  def load_tasks
    @tasks
  end
  def findTaskByContent(name)
    @tasks.select {|task| task.content == name}
  end
  def deleted_task(id)
    @tasks.delete_if {|task| task.id==id}
  end
  def find_task_by_id(id)
    @tasks.select {|task| task.id==id }
  end
  def sort_by_created(order)
    @tasks.sort  do |task1,task2|
      order == "ASC" ? task1.created_at <=> task2.created_at : task2.created_at <=> task1.created_at
    end
  end
  def save
    @todo_store.transaction do
        @todo_store[@user] = @tasks
    end
  end
end
