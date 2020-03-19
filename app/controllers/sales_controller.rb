class SalesController < ApplicationController
    def create
        # debugger
        @sale = Sale.create(check_id: params[:check_id], product_id: params[:product_id])
        render json: @sale
    end

    def delete_from_check
        @sale = Sale.all.find{ |sale| sale.product_id == params[:product_id] && sale.check_id ==params[:check_id]}
        # byebug
        @sale.destroy
        # byebug
        render json: {}
    end
end
