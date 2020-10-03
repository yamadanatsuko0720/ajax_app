class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
    # 新しいメモが一番上に表示するためのorderメソッド DESC=降順
  end


  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }
  end


  def checked
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
  # 既読の操作を行ったときに実行されるアクション/4651

end

#class PostsController < ApplicationController
  #def index
    #@post = Post.find(1) # 1番目のレコードを@postに代入
  #end
#end