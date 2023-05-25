class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.references :employee, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
