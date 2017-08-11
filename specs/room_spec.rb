require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative("../guest.rb")
require_relative('../song.rb')

class TestRoom < Minitest::Test

  def setup()
    @room1 = Room.new(1, 10)
    @room2 = Room.new(2, 5)
    @room3 = Room.new(3, 1)

    @song1 = Song.new("Shoulders of Giants", "King Witch")
    @song2 = Song.new("Nothing", "Iron Altar")
    @song3 = Song.new("Destroyer", "Casual Junkie")
    @song4 = Song.new("Red Giant", "Dune")
  end

  def test_room_number
    result = @room1.number
    assert_equal(1, result)
  end

  def test_room_capacity
    result = @room2.capacity
    assert_equal(5, result)
  end

  def test_room_guests_empty
    result = @room3.guestlist.count
    assert_equal(0, result)
  end

  def test_room_can_add_guest
    @room1.add_guest(@guest1)
    result = @room1.guestlist
    assert_equal(1, result.count)
  end

  def test_person_can_leave_room
    guest1 = Guest.new('Simon')
    guest2 = Guest.new('Maisie')
    @room2.add_guest(guest1)
    @room2.add_guest(guest2)
    @room2.leave_room(guest1)
    result = @room2.guestlist
    assert_equal(1, result.count)
  end

  def test_song_list_empty
    result = @room3.songlist
    assert_equal(0, result.count)
  end

  def test_songs_added_to_list
    @room1.take_song(@song1)
    assert_equal("Shoulders of Giants", @room1.songlist[0].song_name)
  end

  def test_room_full
    guest1 = Guest.new('Simon')
    guest2 = Guest.new('Maisie')
    @room3.add_guest(guest1)
    @room3.add_guest(guest2)
    assert_equal("This room is full. Please leave", @room3.full_room)
  end

  def test_room_not_full
    guest1 = Guest.new('Simon')
    guest2 = Guest.new('Maisie')
    @room1.add_guest(guest1)
    @room1.add_guest(guest2)
    assert_equal("There is still space in the room", @room1.full_room)
  end


end
