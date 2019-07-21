require 'pry'
class Doctor
    
    attr_reader :name, :appointments

    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        new_app = Appointment.new(date, patient, self)
        @appointments << new_app
        new_app
    end

    def appointments
        Appointment.all.select {|apps| apps.doctor == self}
    end

    def patients
        appointments.map {|apps| apps.patient }
    end

end