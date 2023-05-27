class AddCascadeDeleteToEmploymentHistories < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :employment_histories, :employees
    add_foreign_key :employment_histories, :employees, on_delete: :cascade
  end
end
