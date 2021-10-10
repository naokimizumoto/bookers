class BooksController < ApplicationController
 def new
 end

 def index
  @books = Book.all

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
   @book = Book.find(params[:id])
 end

 def destroy
 end

 def update
    book = Book.find(params[:id])
    book.update(list_params)
    redirect_to book_path(list.id)
 end

 def edit
   @book = Book.find(params[:id])
 end

private
def book_params
  params.permit(:title, :body)
end

end
