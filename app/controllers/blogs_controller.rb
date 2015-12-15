class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.name = current_user.name
    if @blog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blog_path(@blog)
    else
      render :edit
    end
  end

  def destroy
  end

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
    # @notes = @blog.notes
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  private
  def blog_params
    params.require(:blog).permit(:headline, :story, :image)
  end
end
