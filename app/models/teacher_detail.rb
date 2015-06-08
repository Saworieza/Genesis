class TeacherDetail < ActiveRecord::Base
	has_attached_file :image, styles: { large: "300x350#", medium: "200x250#", thumb: "150x150#", avatar: "25x25#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
