class Subject < ActiveRecord::Base
  # attr_accessible :title, :body
  scope :visible, where(:visible => true)
  scope :invisible, where(:visible => false)
  scope :search, lambda{|query| where (["name LIKE ?","%#{query}%"])}
end
