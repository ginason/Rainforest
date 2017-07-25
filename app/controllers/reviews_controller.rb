class ReviewsController < ApplicationController
  def create
    @review = Product.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product][:id]

 if @review.save
    redirect_to "/products/:id"
  else
    # otherwise render new.html.erb
    render :product_path
  end
  end
end
