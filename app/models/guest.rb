class Guest

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def trips
        Trip.all.select{|trip|trip.guest == self}
    end

    def trip_count
        self.trips.count
    end

    def listings
       trips. map{|trip|trip.listing}
    end

    def trip_count
    end

    def self.pro_traveller
        self.all.select{|guest|guest.trips.count>1}
    end

    def self.find_all_by_name(name)
        self.all.select{|guest|guest.name == name}
    end



    def self.all
        @@all
    end

end