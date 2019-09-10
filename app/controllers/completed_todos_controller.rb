class CompletedTodosController < ApplicationController

  def update
    @todo = Todo.find(params[:id])

    if @todo.completed?
      @todo.completed = false
    else
      @todo.completed = true
    end

    @todo.save
    redirect_to todos_path
  end

end
