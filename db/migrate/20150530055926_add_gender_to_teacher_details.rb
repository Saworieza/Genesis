class AddGenderToTeacherDetails < ActiveRecord::Migration
  def change
    add_column :teacher_details, :gender, :string
  end
end
