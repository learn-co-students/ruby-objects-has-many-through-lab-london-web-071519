require 'pry'
class Patient
    attr_reader :name, :appointments, :doctors

    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @@all << self
    end

    def new_appointment(doctor, date)
        new_app = Appointment.new(date, self, doctor)
        @appointments << new_app
        new_app
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|apps| apps.patient == self}
    end

    def doctors
        appointments.map {|apps| apps.doctor }
    end

end