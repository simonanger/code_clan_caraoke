class Room

  attr_accessor(:number, :capacity, :guestlist, :songlist)

  def initialize(number, capacity)
    @number = number
    @capacity = capacity
    @guestlist = []
    @songlist = []
  end

  def add_guest( guest )
    @guestlist.push(guest)
  end

  def leave_room( guest )
    @guestlist.delete( guest )
  end

  def take_song( song )
    @songlist.push( song )
  end
end
