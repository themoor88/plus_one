class UserReviewsController < ApplicationController

  def show
    @user_review = User_Review.find(params[:id])
  end

  def create
    @user_review = @user.user_reviews.build(review_params)
    @review.user_id = current_user.id

    if @user_review.save
      redirect_to products_path, notice: "Review created successfully."
    else
      render 'products/show'
    end

  end

  def destroy
    @user_review = Review.find(params[:id])
    @user_review.destroy
  end

  private
  def review_params
    params.require(:user_review).permit(:comment, :product_id)
  end

  def load_product
    @product = Product.find(params[:product_id])
  end
end
