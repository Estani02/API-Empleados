json.array! @employees do |employee|
    json.id employee.id
    json.name employee.name
  
    json.position do
      json.name employee.position.name
      json.department employee.position.department.name
    end
  
    employment = EmploymentHistory.find_by(employee_id: employee.id)
    if employment
      json.employment_history do
        json.company employment.company
        json.start_date employment.start_date
        json.end_date employment.end_date
      end
    end
  
    training = Training.find_by(employee_id: employee.id)
    if training
      json.trainings do
        json.name training.name
        json.description training.description
      end
    end
  end