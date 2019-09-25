class EmployeesController < ApplicationController
    def index
        @employees = Employee.all 
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new 
        @employee = Employee.new
        @dogs = Dog.all
    end

    def edit 
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
    end

    def create
        @employee = Employee.create(first_name: first_name,last_name: last_name, alias: alias, office: office,img_url: img_url,dog_id: id)
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(first_name: first_name,last_name: last_name, alias: alias, office: office,img_url: img_url,dog_id: id)
    end

end
