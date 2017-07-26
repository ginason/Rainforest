class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.review.new
    @review.comment = params[:review][:comment]
    # @review.product_id = params[:product][:id]

    if @review.save
    redirect_to products_path
    else
    # otherwise render new.html.erb
    render :review
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.comment = params[:review][:comment]
    flash[:notice] = "You have successfully updated the review."

    if @review.save
      redirect_to "/products"
    else
      render :edit
    end
  end

end
