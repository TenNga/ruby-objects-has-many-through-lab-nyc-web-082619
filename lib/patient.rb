class Patient
  attr_accessor :name
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self 
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments 
    Appointment.all.select { |apt| apt.patient == self } 
  end
  
  def doctors 
    Appointment.all.select { |apt| apt.
  end 
  
  def self.all 
    @@all 
  end
  
end