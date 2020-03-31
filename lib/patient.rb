class Patient
  
  attr_accessor :name 
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name
    save
  end 
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    appointment
  end 
  
  def appointments 
    Appointment.all.select {|appointment| appointment.patient == self}
  end 
  
  def doctors 
    appointments.collect {|appointment| appointment.doctor}
  end 
  
  def save 
    @@all << self
  end
  
end