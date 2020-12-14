class EmployeesController < ApplicationController
    
    
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
        
        #render :new
    end 
    
    def create 
        @employee = Employee.create(employee_params)
        #byebug
        #@employee.save
        redirect_to employees_path(@employee)
    end 
    
    def edit
        @employee = Employee.find(params[:id])
        
        # render :edit
    end 
    
    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employees_path(@employee)
    end 

     

    private 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :office, :img_url, :dog_id, :title, :alias)
    end 

    # create_table "employees", force: :cascade do |t|
    #     t.string "first_name"
    #     t.string "last_name"
    #     t.string "alias"
    #     t.string "title"
    #     t.string "office"
    #     t.string "img_url"
    #     t.integer "dog_id", null: false
     

end
