require 'pry'
class Doctor
  attr_reader :name
  @@all=[]

  def initialize (name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|x|x.doctor==self}
  end

  def new_appointment (patient,date)
    Appointment.new(patient,date,self)
  end

  def patients
    appointments.map do |x| x.date
    end
  end
end
