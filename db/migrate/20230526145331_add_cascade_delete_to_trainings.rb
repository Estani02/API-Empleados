class AddCascadeDeleteToTrainings < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :trainings, :employees
    add_foreign_key :trainings, :employees, on_delete: :cascade
  end
end

