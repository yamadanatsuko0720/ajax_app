class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
    # 新しいメモが一番上に表示するためのorderメソッド DESC=降順
  end


  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

end

#class PostsController < ApplicationController
  #def index
    #@post = Post.find(1) # 1番目のレコードを@postに代入
  #end
#end