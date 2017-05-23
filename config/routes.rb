Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get all the tasks
  # get url.com/tasks to tasks controller index action
  get 'tasks', to: 'tasks#index'

  # find one task
  # get url.com/tasks/:id to tasks controller show action
  get 'tasks/:id', to: 'tasks#show'

  # add a new task to the app
  # get url.com/new to tasks controller new action
  get 'tasks/new', to: 'tasks#new'
  # post
  post 'tasks', to: 'tasks#create'


  # update the info of a given task
  # get

  # patch

  # delete a task

end
