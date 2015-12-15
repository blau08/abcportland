class WelcomeController < ApplicationController
  def index
    @blogs = Blog.all
  end

  # def edit
  # end
  #
  # def show
  #   @blog = Blog.find(params[:id])
  # end
end
