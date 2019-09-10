class TodosController < ApplicationController
  before_action :todo_find, only: [:show, :edit, :update]

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to todos_path
  end

  def show; end

  def edit; end

  def update
    @todo.update(todo_params)
    redirect_to todos_path
  end

  private
  def todo_params
    params.require(:todo).permit(:description, :completed)
  end

  def todo_find
    @todo = Todo.find(params[:id])
  end
end
