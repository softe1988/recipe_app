class Recipe < ActiveRecord::Base
 validates :name, presence:true, length:{minimum: 2}
 validates :category, presence:true, length: {minimum: 3}
 validates :instructions, presence:true
 validates :prep_time, presence:true, numericality: {greater_than: 0}
 validates :cook_time, presence:true, numericality: {greater_than: 0}

 mount_uploader :picture, PictureUploader     
 
 def minutes_total
  prep_time + cook_time
 end
end
