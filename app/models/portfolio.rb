class Portfolio < ApplicationRecord
  
  validates_presence_of :title, :body, :thumb_image, :main_image
  
  def self.angular
    where(title: "Angular")
  end
  
  #scope: ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails 3')
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
  
end
