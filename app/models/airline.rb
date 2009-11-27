class Airline < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :within => 2..15
  
    has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "80x80>" }
end
