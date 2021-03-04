class PostsController < ApplicationController
  before_action :set_post, only: %i[ show update destroy ]

  # GET /posts or /posts.json
  def index
    @post = Post.find_by(params[:id])
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @user = current_user
    @post = current_user.posts.build
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to posts_path(@post), notice: '投稿しました'
    else
      flash.now[:error] = '投稿に失敗しました'
      render :new
    end

  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @posts = current_user.posts.find(params[:id])
    post = Post.find(params[:id])
    post.destroy!
    redirect_to root_path, notice: '削除できました'
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit( :word,
                                    :image,
                                    images: []).merge(user_id: current_user.id)
    end
end
