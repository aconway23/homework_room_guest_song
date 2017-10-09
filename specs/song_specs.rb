require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup()

    @song = Song.new('Around the world', 'Daft Punk')

  end


  def test_song_title()
    actual = @song.title()
    assert_equal('Around the world', actual)
  end
  

  def test_song_artist
    actual = @song.artist
    assert_equal('Daft Punk', actual)
  end

end
