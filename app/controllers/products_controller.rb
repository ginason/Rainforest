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
      @product = Product.new(product_params)

      if @product.save
        redirect_to products_path
      else
        redirect_to new_product_path
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
