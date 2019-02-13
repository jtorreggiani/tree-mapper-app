# Controller for rendering trees related pages
class TreesController < ApplicationController
  before_action :set_tree, only: %i[show edit update destroy]

  # lists all trees
  # @api public
  # @example GET /trees?query=dope
  # @return renders index
  def index
    @trees = Tree.all
  end

  # renders an individual post
  # @api public
  # @example GET /trees/1
  # @return renders show
  def show; end

  # renders new post page
  # @api public
  # @example GET /trees/new
  # @return renders new
  def new
    @tree = Tree.new
  end

  # renders edit page for post
  # @api public
  # @example GET /trees/1/edit
  # @return renders edit
  def edit; end

  # action to create a post record
  # @api public
  # @param post_params [Hash] strong params for trees
  # @example POST /trees POST /trees.json
  # @return renders show or new
  def create
    @tree = Tree.new(tree_params)

    respond_to do |format|
      if @tree.save
        format.html { redirect_to trees_path, notice: 'Tree was successfully created.' }
        format.json { render :show, status: :created, location: @tree }
      else
        format.html { render :new }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # action to update a post
  # @api public
  # @param post_params [Hash] strong params for trees
  # @example PATCH/PUT /trees/1 or /trees/1.json
  # @return renders show or edit
  def update
    respond_to do |format|
      if @tree.update(post_params)
        format.html { redirect_to @tree, notice: 'Tree was successfully updated.' }
        format.json { render :show, status: :ok, location: @tree }
      else
        format.html { render :edit }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # action to destroy a post record
  # @api public
  # @example DELETE /trees/1 or /trees/1.json
  # @return renders show or edit
  def destroy
    @tree.destroy
    respond_to do |format|
      format.html { redirect_to trees_url, notice: 'Tree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # sets the post instance variable given an id param
  # @api private
  # @param post_params [Hash] strong params for trees
  # @example set_p
  # @return [Record] post object
  def set_tree
    @tree = Tree.find(params[:id])
  end

  # Never trust parameters from the internet, only allow the white list through
  # @api private
  # @param params [Object] the request parameters
  # @example post_params
  # @return [Record] post param
  def tree_params
    params.require(:tree).permit(:latitude, :longitude, :image)
  end
end
