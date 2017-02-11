require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative 'lib/Task.rb'
require_relative 'lib/TodoList.rb'

todo_list = TodoList.new("Jhon")

get '/tasks' do
  @tasks = todo_list.load_tasks
  # todo_list.save
  erb(:task_index)
end

get '/new_task' do
  erb(:new_task)
end

post '/create_task' do
  todo_list.add_task(Task.new(params[:content]))
  redirect('/tasks')
end

get '/complete_task/:id' do
  task = todo_list.find_task_by_id(params[:id])
  task.complete!
  #todo_list.save
  redirect('/tasks')
end

get '/delete_task/:id' do
  todo_list.deleted_task(params[:id].to_i)
  redirect('tasks')
end
