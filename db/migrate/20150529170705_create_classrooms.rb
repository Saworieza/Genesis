class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :form
      t.string :stream
      t.string :class_teacher

      t.timestamps null: false
    end
  end
end
