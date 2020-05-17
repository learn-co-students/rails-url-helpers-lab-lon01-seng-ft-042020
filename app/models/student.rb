class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

 after_initialize :set_defaults 

  def set_defaults
    self.active ||= false 
  end 

end