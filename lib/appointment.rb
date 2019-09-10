class Appointment
  #attr_accessor :patient
  attr_accessor :date, :doctor, :patient
  @@all=[]

  def initialize (date,doctor)
    @date=date
    @doctor=doctor
    @@all<<self
  end

  def self.all
    @@all
  end


end
