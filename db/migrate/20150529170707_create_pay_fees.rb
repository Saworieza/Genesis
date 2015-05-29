class CreatePayFees < ActiveRecord::Migration
  def change
    create_table :pay_fees do |t|
      t.string :student_name
      t.integer :admission_number
      t.integer :form
      t.string :stream
      t.integer :amount
      t.string :pay_method

      t.timestamps null: false
    end
  end
end
