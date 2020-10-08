class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }
  end
 メモ投稿機能実装


 
 master
  def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
 メモ投稿機能実装
    render json:{ post: item }
  end

end

    render json: { post: item }
  end

 end
 master
