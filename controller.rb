require_relative 'task'
require_relative 'view'

class Controller
  def initialize(todo_list)
    @todo_list = todo_list
    @view = View.new
  end

  def list
    tasks = @todo_list.all
    @view.display(tasks)
  end

  def create
    title = @view.ask_user_for_title
    task = Task.new(title)
    @todo_list.add(task)
  end

  def mark_as_done
    list
    index = @view.ask_user_for_index
    task = @todo_list.find(index)
    task.mark_as_done!
  end

  def destroy
    list
    index = @view.ask_user_for_index
    @todo_list.remove(index)
  end
end
