class PostsController < ApplicationController
  def index
    # gets all posts
    @posts = Post.all

  end

  def show
    #call find from the Post model
    #pass the id from the url
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if(@post.save)
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if(@post.update(post_params))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

# can be only accessed from this class
  private def post_params
    params.require(:post).permit(:title, :body)
  end

end
