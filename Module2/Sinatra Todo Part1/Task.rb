require 'yaml'
class Task
  attr_reader(:content, :id, :created_at)
  @@current_id = 1
  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id +=1
    @completed = false
    @created_at = Time.now
    @updated_at = nil
  end

  def complete?
    @completed ? true : false
  end
  def complete!
    @completed = true
  end
  def make_incomplete!
    @completed = false
  end
  def update_content!(content)
    @content = content
    @updated_at = Time.now
  end
end


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

=begin
todo_list = TodoList.new("Josh")
todo_list.add_task(Task.new("Walk the dog"))
todo_list.add_task(Task.new("Buy the milk"))
todo_list.add_task(Task.new("Wash the car"))
#task = todo_list.find_task_by_id(1)
#puts "#{task}"
task_sorted_created = todo_list.sort_by_created("DESC")
puts "#{task_sorted_created}"
=end
