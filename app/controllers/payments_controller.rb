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
    #delete payment and reopen check
    def reopen_check
        @payment = Payment.all.find_by(check_id: params[:check_id])
        #reopen on Stripe
        Stripe.api_key = ENV['STRIPE_SEC']
        refund = Stripe::Refund.create({
            charge: @payment.stripe_id
        })


        
        @payment.destroy
        @check = Check.all.find(params[:check_id])
        @check.open = true
        @check.save
        render json: {response: 'success'}
    end
end