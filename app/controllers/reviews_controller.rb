class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create, :new ]
  before_action :set_company, only: %i[new create]

  def new
    @company = Company.find(params[:company_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.company = @company
    @review.status = 'unverified'
    @review.source = 'website'

    if @review.save
      redirect_to company_path(@company)
    else
      render 'companies/show', status: :unprocessable_entity
    end
  end

  private

  def set_company
    @company = Company.find(params[:company_id])
  end

  def review_params
    params.require(:review).permit(:title, :description, :order_id, :score)
  end
end
