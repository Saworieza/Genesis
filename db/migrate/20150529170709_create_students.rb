class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :full_name
      t.date :birth_date
      t.string :gender
      t.string :nationality
      t.integer :form
      t.string :stream
      t.string :classteacher
      t.integer :address
      t.integer :phone1
      t.integer :phone2
      t.string :email
      t.string :town
      t.string :county

      t.timestamps null: false
    end
  end
end
