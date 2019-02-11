class StacksController < ApplicationController

  # render index.html.erb implicitly
  def index
    @stacks = Stack.all
    # is the controller able to get the stacks from the db
    # raise @stacks.inspect
  end

end
