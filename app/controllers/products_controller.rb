class ProductsController < ApplicationController

    def index
        @products = Product.all
        render json: @products
    end

    def create
        @product = Product.create(product_params)
        # byebug
        render json: @product
    end

    private
    def product_params
        params.require(:product).permit(:name, :price, :tax)
    end

end
