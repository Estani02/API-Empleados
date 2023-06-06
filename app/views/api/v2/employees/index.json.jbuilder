json.array! @employees do |employee|
    json.id employee.id
    json.name employee.name
  
    json.position do
      json.name employee.position.name
      json.department employee.position.department.name
    end
  

    employment = EmploymentHistory.where(employee_id: employee.id)

    if employment.any?
      json.employment_history employment do |employment_item|
        json.company employment_item.company
        json.start_date employment_item.start_date
        json.end_date employment_item.end_date
      end
    else
      json.employment_history nil
    end
  
    training = Training.find_by(employee_id: employee.id)
    if training
      json.trainings do
        json.name training.name
        json.description training.description
      end
    end
  end