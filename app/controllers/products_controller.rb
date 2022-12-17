class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :product ]

    def show; end
end
