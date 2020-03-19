class ChecksController < ApplicationController
    def get_checks
        # byebug
        @checks = Check.all.select do |check|
                check[:employee_id] == params[:employee][:id]
            end
        render json: @checks, each_serializer: CheckSerializer
    end

    def index
        @checks = Check.all
        render json: @checks, each_serializer: CheckSerializer
    end

    def create
        @check = Check.create(employee_id: params[:employee][:id], open: true)
        debugger
        render json: @check
    end

    private
    def check_params
        params.permit(employee:[:id, :login, :username])
    end
end
