require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative("../guest.rb")
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Shoulders of Giants", "King Witch")
    @song2 = Song.new("Nothing", "Iron Altar")
    @song3 = Song.new("Destroyer", "Casual Junkie")
    @song4 = Song.new("Red Giant", "Dune")
  end

  def test_song_name
    result = @song1.song_name
    assert_equal("Shoulders of Giants", result)

  end

  def test_artist_name
    result = @song2.artist
    assert_equal("Iron Altar", result)
  end


end
