class PaymentsController < ApplicationController
    #create new payment and close associated check
    def create
        @check = Check.find(params[:check_id])
        @check.open = false
        @check.save
        # debugger
        @payment = Payment.create(
            check_id: params[:check_id],
            amount: params[:amount],
            credit: params[:credit],
            last_four: params[:last_four],
            stripe_id: params[:stripe_id]
            )
        render json: @payment
    end
end