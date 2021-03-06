class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.date :incident_date
      t.string :student
      t.integer :admission_number
      t.text :details
      t.text :action_taken
      t.string :attach_files
      t.string :email_subject
      t.text :email_message
      t.string :email_address

      t.timestamps null: false
    end
  end
end
