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
      flash[:notice] = "You have successfully created a product."


   if @product.save
      # if the product gets saved, generate a get request to "/products" (the index)
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
      flash[:notice] = "You have successfully deleted the product."
    end

    def edit
      @product = Product.find(params[:id])
    end

    def update
      @product = Product.find(params[:id])

      @product.name = params[:product][:name]
      @product.description = params[:product][:description]
      @product.price_in_cents = params[:product][:price_in_cents]
      flash[:notice] = "You have successfully updated the product."

      if @product.save
        redirect_to "/products/#{@product.id}"
      else
        render :edit
      end
    end


  end
