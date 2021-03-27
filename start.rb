require_relative 'todo-list'
require_relative 'controller'
require_relative 'router'

repository = TodoList.new
controller = Controller.new(repository)
router = Router.new(controller)
router.run
