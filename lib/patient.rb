require "pry"

class Patient 

    attr_reader :name, :appointments, :doctors 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
        @appointments = []
     #   @doctor = []
    end 

    def self.all 
        @@all 
    end 

    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
        @appointments << appointment
        appointment
     end 

     def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
     end 

     def doctors 
        appointments.map {|info| info.doctor}
     end 

end 

