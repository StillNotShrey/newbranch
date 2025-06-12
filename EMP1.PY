class EmployeePayroll:
    def register_employee(this, employee_data, emp_name):
        if emp_name not in employee_data:
            employee_data[emp_name] = {
                'projects': 0,
                'hours_worked': 0,
                'status': 'Inactive'
            }
        return employee_data

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
