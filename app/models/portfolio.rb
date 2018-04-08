class Portfolio < ApplicationRecord
  
  validates_presence_of :title, :body, :thumb_image
  
  def self.angular
    where(title: "Angular")
  end
  
  scope: ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails 3')
  
end
