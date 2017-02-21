class ProductsController < ApplicationController
  def index
      @products = Product.all
      @category = Category.all
      render '/products/index'
  end

  def new
      render 'new'
  end

  def create
    Product.create(name: params[:name], description: params[:description], pricing: params[:pricing],category: Category.find(params[:category_id]))

    redirect_to '/'

  end

  def show
     @product = Product.find(params[:id])
     @comments = Product.find(params[:id]).comments
  end

  def create_comment
    Comment.create(comment: params[:comment], product: Product.find(params[:id]))

    redirect_to "/products/#{params[:id]}"
  end

  def show_comments
      @comments = Comment.all
      render 'show_comments'
  end

  def edit
      @product = Product.find(params[:id])
  end

  def update
     Product.find(params[:id]).update(name: params[:name], description: params[:description], pricing: params[:pricing],category: Category.find(params[:category_id]))


     redirect_to '/'
   end

   def delete
     Product.find(params[:id]).destroy

     redirect_to '/'
   end
end
