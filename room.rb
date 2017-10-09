class Room

  attr_reader(:number)

  def initialize(number)
    @number = number
    @guests = []
    @song = []
  end

  def get_number_of_guests()
    return @guests.length()
  end

  def check_in_guest(guest)
    @guests << guest
    return @guests.count
  end


  def check_out_guest(guest)
    for guest in @guests
      if guest == guest
        @guests.delete(guest)
      end
    end
    return @guests.count
  end

  def add_song_to_room(song)
    @song << song
    return @song.count
  end




end
