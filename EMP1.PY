class EmployeePayroll:
    def register_employee(this, employee_data, emp_name):
        if emp_name not in employee_data:
            employee_data[emp_name] = {
                'projects': 0,
                'hours_worked': 0,
                'status': 'Inactive'
            }
        return employee_data
    
    def calc_avg(self, employee_data, emp_name):
        if emp_name in employee_data:
            emp = employee_data[emp_name]
            proj = emp.get('projects',0)
            hours = emp.get('hours_worked',0)

            if proj > 0:
                avg = hours / proj
                print(f"Average hours per project for {emp_name}: {avg:.2f}")
                return avg
            else:
                print(f"{emp_name} has no projects.")
                return None
        else:
            print(f"{emp_name} not found in the records.")
            return None
            

payroll = EmployeePayroll()

data = {
    "Alice": {
        "projects": 3,
        "hours_worked": 120,
        "status": "Active"
    }
}

updated_data = payroll.register_employee(data, "Bob")
print(updated_data)

updated_data = payroll.register_employee(data, "Alice")
print(updated_data)

updated_data2 = payroll.calc_avg(data,"Alice")
print(updated_data2) 

class EmployeeTracker:
    def calculate_average_hours(self, employee_data: dict, emp_name: str) -> float:
        if emp_name not in employee_data:
            raise ValueError(f"Employee '{emp_name}' does not exist in the employee data.")
        
        emp_info = employee_data[emp_name]
        projects = emp_info.get('projects', 0)
        hours_worked = emp_info.get('hours_worked', 0)
        
        if projects == 0:
            return 0.0
        
        return hours_worked / projects
