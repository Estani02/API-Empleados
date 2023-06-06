    json.id @employee.id
    json.name @employee.name
  
    json.position do
        json.name @employee.position.name
        json.department @employee.position.department.name
      end

      employment = EmploymentHistory.find_by(employee_id: @employee.id) # Obtener el historial de empleo del empleado
      if employment
        json.employment_history do
          json.company employment.company
          json.start_date employment.start_date
          json.end_date employment.end_date
        end
      end
      trainings = Training.where(employee_id: @employee.id) # Obtener los cursos de entrenamiento del empleado
      if trainings.any?
        json.trainings do
          trainings.each do |training|
            json.name training.name
            json.description training.description
          end
        end
      end


