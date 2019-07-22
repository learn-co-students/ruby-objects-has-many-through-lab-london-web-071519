require "pry"

class Doctor 

    attr_reader :name, :appointments, :patients 
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
        @appointments = []
    end 

    def self.all 
        @@all 
    end 

     def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
        @appointments << appointment
        appointment
     end 

     def appointments
        Appointment.all.select {|appointment| appointment.doctor == self} 
     end 

     def patients
        appointments.map {|info| info.patient}
     end 

end 

