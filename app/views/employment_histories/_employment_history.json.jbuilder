json.extract! employment_history, :id, :employee_id, :company, :start_date, :end_date, :created_at, :updated_at
json.url employment_history_url(employment_history, format: :json)
