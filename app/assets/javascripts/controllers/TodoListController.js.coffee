angular.module('todoApp').controller "TodoListController", ($scope, Task) ->
  $scope.init = (taskListId) ->
    @taskService = new Task(taskListId)
    $scope.tasks = @taskService.all()

  $scope.addTask = ->
    task = description: $scope.taskDescription
    $scope.tasks.push(task)
    @taskService.create(task)