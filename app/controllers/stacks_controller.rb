class StacksController < ApplicationController

  # render index.html.erb implicitly
  def index
    @stacks = Stack.all
    # is the controller able to get the stacks from the db
    # raise @stacks.inspect
  end

  def show
    @stack = Stack.find(params[:id])
  end

  private

  # refactor @stack = Stack.find(params[:id]) to private method

end
