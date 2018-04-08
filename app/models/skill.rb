class Skill < ApplicationRecord
  include PlaceHolder
  
  validates_presence_of :title, :percent_utilized
  
  def set_defaults
    self.badge ||= PlaceHolder.image_generator(height: '250', width: '250')
  end
  
  
  
end


