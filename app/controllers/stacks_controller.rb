class StacksController < ApplicationController

  # render index.html.erb implicitly
  def index
    @stack = Stack.new
    @stacks = Stack.all
    # is the controller able to get the stacks from the db
    # raise @stacks.inspect
  end

  def show
    @stack = Stack.find(params[:id])
  end

  # Create a new Stack and associate it to the user
  def create
    @stack = Stack.new(stack_params)
    @stack.name = params[:stack][:name]
    # associate this Stack to the current user
    # see recent lab I paired on
    @stack.save

    redirect_to stack_path(@stack)
  end

  private

  # refactor @stack = Stack.find(params[:id]) to private method
  def stack_params
    params.require(:stack).permit(:name)
  end
end
