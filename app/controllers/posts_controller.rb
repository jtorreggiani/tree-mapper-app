# Controller for rendering posts related pages
class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  # lists all posts
  # @api public
  # @example GET /posts
  # @return renders index
  def index
    @posts = Post.all
  end

  # renders an individual post
  # @api public
  # @example GET /posts/1
  # @return renders show
  def show; end

  # renders new post page
  # @api public
  # @example GET /posts/new
  # @return renders new
  def new
    @post = Post.new
  end

  # renders edit page for post
  # @api public
  # @example GET /posts/1/edit
  # @return renders edit
  def edit; end

  # action to create a post record
  # @api public
  # @param post_params [Hash] strong params for posts
  # @example POST /posts POST /posts.json
  # @return renders show or new
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # action to update a post
  # @api public
  # @param post_params [Hash] strong params for posts
  # @example PATCH/PUT /posts/1 or /posts/1.json
  # @return renders show or edit
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # action to destroy a post record
  # @api public
  # @example DELETE /posts/1 or /posts/1.json
  # @return renders show or edit
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # sets the post instance variable given an id param
  # @api private
  # @param post_params [Hash] strong params for posts
  # @example set_p
  # @return [Record] post object
  def set_post
    @post = Post.includes(:user).find(params[:id])
  end

  # Never trust parameters from the internet, only allow the white list through
  # @api private
  # @param params [Hash] {title, body}
  # @example post_params
  # @return [Record] post param
  def post_params
    params.require(:post).permit(:title, :body).merge(user_id: current_user.id)
  end
end
