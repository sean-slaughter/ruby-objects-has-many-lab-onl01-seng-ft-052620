require 'pry'
require_relative 'song'

class Artist

    attr_accessor :name

    def initialize(name)
        self.name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
        self.songs << song
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.song_count
        Song.all.size
    end
    
end