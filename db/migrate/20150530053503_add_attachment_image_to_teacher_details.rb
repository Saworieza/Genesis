class AddAttachmentImageToTeacherDetails < ActiveRecord::Migration
  def self.up
    change_table :teacher_details do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :teacher_details, :image
  end
end
