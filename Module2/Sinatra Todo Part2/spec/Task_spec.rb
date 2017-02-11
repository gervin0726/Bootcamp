require_relative '../Task.rb'
require 'spec_helper'

describe Task do
  before :all do
    @task =  Task.new("Buy the milk")
    @task2 = Task.new("Wash the car")
    @todoList = TodoList.new("Josh")
  end
  it "when task is start completed is false" do
    expect(@task.complete?).to eq(false)
  end
  it "after call method complete! the task completed true" do
    @task.complete!
    expect(@task.complete?).to eq(true)
  end
  it "after call method make_incomplete! the task completed false" do
    @task.make_incomplete!
    expect(@task.complete?).to eq(false)
  end
  it "after update content Walk the dog to task, the attribute content is same" do
    @task.update_content!("Walk the dog")
    expect(@task.content).to eq("Walk the dog")
  end
  it "add one task to TodoList and class TodoList have the task inside" do
    @todoList.add_task(@task)
    expect(@todoList.findTaskByContent("Walk the dog")).not_to eq([])
  end
  it "deleted task with id, the TodoList.task no have task with this id" do
    @todoList.deleted_task(1)
    expect(@todoList.find_task_by_id(1)).to eq([])
  end

end
