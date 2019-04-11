class BlogsController < ApplicationController
  def show
  end

  def index
  end

  def new
  	@blog = Blog.new #form_forを使うのでインスタンス変数。Blogモデルから新規登録用にBlogインスタンス作成
  end
#投稿保存createアク追加
  def create
  	
  end

  def edit
  end

  private #createアクにフォームから送られてきた投稿を保存する
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end
end
