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

  end

  def create
    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

# can be only accessed from this class
  private def post_params
    params.require(:post).permit(:title, :body)
  end

end
