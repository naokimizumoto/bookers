class BooksController < ApplicationController
 def new
 end

 def index
   
 end

 def create
    # １. データを新規登録するためのインスタンス作成
    @book = Book.new(book_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    @book.save
    # ３. トップ画面へリダイレクト
    redirect_to book_path(@book.id)
 end

 def show
 end

 def destroy
 end

 def update
 end

 def edit
 end

private
def book_params
  params.permit(:title, :body)
end

end
