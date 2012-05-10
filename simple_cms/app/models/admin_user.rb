class AdminUser < ActiveRecord::Base
  # attr_accessible :title, :body
  scope :named, lambda{|first,last| where (:first_name =>first, :last_name=>last)}
end
