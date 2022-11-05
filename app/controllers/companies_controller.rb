class CompaniesController < ApplicationController
    before_action :set_company, only: [ :show, :edit ]

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
