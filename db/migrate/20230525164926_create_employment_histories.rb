class CreateEmploymentHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :employment_histories do |t|
      t.references :employee, null: false, foreign_key: true
      t.string :company
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
