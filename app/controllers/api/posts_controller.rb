class Api::PostsController < ApplicationController
  
  def index
    @post = Post.all()
    render json: @post
  end
    
  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def create
    post_params[:edited] = false
    post = Post.new(post_params)
    if post.save
      render json: post, status: 201
    else 
      render json: { errors: post.errors }, status: 422
    end
  end

  def update
    post = Post.find(params[:id])
    post[:edited] = true

    if post.update(update_params)
      render json: post, status: 200
    else
      post[:edited] = false
      render json: { errors:post.errors }, status: 422
    end
  end

  def destroy
    if Post.exists?(params[:id])
      post = Post.find_by(params[:id])
      @post = post.delete
      render json: @post, status: 204
    else
      render json: { errors: "can't find record with provided id" }, status: 422
    end
  end

  private 
    def post_params
      @_post_params ||= params.require(:post).permit(:username, :title, :detail)
    end

    def update_params
      @_update_params ||= params.require(:post).permit(:title, :detail)
    end
end
