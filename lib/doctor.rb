class Doctor 
  
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all 
  end
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    appointment
  end 
  
  def appointments 
    Appointment.all.select {|appointment| appointment.doctor == self}
  end 
  
  def patients 
    appointments.collect {|appointment| appointment.patient}
  end 
  
  def save
    @@all << self 
  end
  
end 