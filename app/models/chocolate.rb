class Chocolate < ActiveRecord::Base
  validates :name, :presence => true
  validates :desc, :presence => true, 
                    :length => { :minimum => 5 }
  validates :price, :presence => true
          
  
end
