class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
        render json: @employees

    end
    def create
        employee = Employee.create(employee_params)
        payload = {employee_id: employee.id}
        token = JWT.encode(payload, secret, 'HS256')
        render json: {employee:  employee, token: token}
    end

    def destroy
        employee = employee.find(params[:id])
        employee.destroy_all
        render json: { success: "Woohoooo"}
    end


    private 
    def employee_params
        params.permit(:name, :password, :login)
    end
end
