class AuthController < ApplicationController
    def login
        employee = Employee.find_by(login: employee_params[:login])
        if employee &&employee.authenticate(employee_params[:password])
            payload = {employee_id: employee.id}
            token = JWT.encode(payload, secret, 'HS256')
            render json: {employee:  employee, token: token}
        else
            render json: {error:  'Incorrect login or password'} 
        end
    end

    def persist
        if request.headers['Authorization'] 
            ## 'bearer idfhdskfhkjdshfjkdsfhdsjkfhenwfjwdhnfuwe'
            token = request.headers['Authorization'].split(' ')[1]
            # [{user_id: 1}, {algorithm: 'H256'}]
            employee_id = JWT.decode(token, secret, true, {algorithm: 'HS256'})[0]['employee_id']
            employee = Employee.find(user_id)
            render json: user
        end
    end

    private

    def employee_params
        params.permit(:username, :login, :password)
    end
end