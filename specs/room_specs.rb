require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')



class TestRoom < MiniTest::Test

  def setup()

    @room = Room.new('Room 1')


  end

  def test_room_number()
    actual = @room.number()
    assert_equal('Room 1', actual)
  end

  def test_room_guests_count_is_zero()
    actual = @room.get_number_of_guests()
    assert(0, actual)
  end

  def test_guest_check_in()
    assert_equal(1, @room.check_in_guest('Adam'))
  end

  def test_guest_check_out()
    assert_equal(0, @room.check_out_guest('Adam'))
  end

  #  def test_add_song_to_room()
  #    actual = @room.add_song_to_room()
  #    assert(1, 'Around the world', 'Daft Punk', actual)
  #  end

   def test_add_song_to_room()
     assert_equal(1, @room.add_song_to_room(@song))
   end

   


end
