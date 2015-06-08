class CreateTeacherDetails < ActiveRecord::Migration
  def change
    create_table :teacher_details do |t|
      t.string :employer
      t.string :employee_number
      t.date :employment_date
      t.string :full_name
      t.date :birth_date
      t.string :marital_status
      t.string :nationality
      t.string :home_address
      t.integer :phone_1
      t.integer :phone_2
      t.string :email
      t.string :town
      t.string :county
      t.text :education
      t.text :certifications
      t.text :subjects

      t.timestamps null: false
    end
  end
end
