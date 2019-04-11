class BlogsController < ApplicationController
#データ1件だけ取得。
  def show
    @blog = Blog.find(params[:id])#取得後インスタンス変数としてビューへ
  end

#topページに対応するアクションindex.投稿されたのを取得する
  def index
    @blogs = Blog.all #取得したのをインスタンス変数としてビューへ
  end

  def new
  	@blog = Blog.new #form_forを使うのでインスタンス変数。Blogモデルから新規登録用にBlogインスタンス作成
  end

  def edit
  end
#投稿保存createアク追加
  def create
  	blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end

  private #createアクにフォームから送られてきた投稿を保存する
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end
end
