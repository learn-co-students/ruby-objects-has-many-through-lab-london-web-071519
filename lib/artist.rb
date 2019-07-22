require "pry"
class Artist 

    attr_accessor :songs, :genres 
    attr_writer :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
        @songs = []
        @genres = []
    end 

    def name
        @name 
    end 

    def self.all 
        @@all 
    end 

     def new_song(name, genre)
          song = Song.new(name, self, genre)
          @songs << song
          @genres << genre  
          song 
     end  

     def songs 
        @songs 
     end 

     def genres
        @genres
     end 

end 
