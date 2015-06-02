class TodosController < ApplicationController

  #before_action :authenticate_user!, except: [:index, :show]
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = current_user.todos.build(todo_params)
    if @todo.save
      AppMailer.notify_on_new_todo(current_user, @todo).deliver
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @todo.update(todo_params)
      redirect_to @todo
    else
      render :edit
    end
  end

  def destroy
    if @todo.destory
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:name, :description)
  end
end