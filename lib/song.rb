class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each {|genre| 
            if hash.has_key?(genre)
                hash[genre] += 1
            else
                hash[genre] = 1
            end
        }
        hash
    end
    def self.artist_count
        hash = {}
        @@artists.each {|artist| 
            if hash.has_key?(artist)
                hash[artist] += 1
            else
                hash[artist] = 1
            end
        }
        hash
    end
end