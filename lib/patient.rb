class Patient
  attr_accessor :name
  
  def initialize (name)
    @name = name 
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments 
    Appointment.all.select { |apt| apt.patient == self } 
  end
  
  def self.all 
    Appointment.all.map { |apt| apt.patient }
  end
  
end