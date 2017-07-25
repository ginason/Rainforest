class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
      @product = Product.new
      @product.name = params[:product][:name]
      @product.description = params[:product][:description]
      @product.price_in_cents = params[:product][:price_in_cents]


   if @product.save
      # if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to "/products"
    else
      # otherwise render new.html.erb
      render :new
    end
    
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to products_path
    end

    def edit
    end

    def update
    end


  end
