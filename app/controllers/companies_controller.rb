class CompaniesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:show]
    before_action :set_company, only: [:edit, :show ]

    def index
        @companies = Company.all
    end

    def show; end

    def edit; end

    def update; end

    private

    def set_company
        @company = Company.find(params[:id])
    end
end
