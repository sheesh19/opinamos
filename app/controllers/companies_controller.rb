class CompaniesController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :index, :show ]
    before_action :set_company, only: [:edit, :show ]

    def index
        if params[:query].present?
            @companies = Company.global_search(params[:query])
        else
            @companies = Company.all
        end
    end

    def show
        @review = Review.new
    end

    def edit; end

    def update; end

    private

    def set_company
        @company = Company.find(params[:id])
    end
end
