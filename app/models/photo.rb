class Photo < ActiveRecord::Base
  has_attached_file :photo, :styles => { :large => "400x293#",
                                         :medium => "200x141",
                                         :xsmall => "64x47#" }
  
  validates_attachment_content_type :photo, 
    :content_type => ["image/jpeg", "image/gif", "image/png", "image/pjpeg", "image/x-png"],
    :message      => "file was not in an acceptable format. Please make sure your image is in the JPEG, GIF or PNG format and try again. If you continue to have problems, contact us at iotw [AT] customink.com."
    
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
end
