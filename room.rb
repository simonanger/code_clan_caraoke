class Room

  attr_accessor(:number, :capacity, :guestlist, :songlist, :cost)

  def initialize(number, capacity, cost)
    @number = number
    @capacity = capacity
    @cost = cost
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

  def full_room
    if @guestlist.count > @capacity
      return "This room is full. Please leave"
      @capacity.pop()
    else
      return "There is still space in the room"
    end
  end

  def can_guest_afford( guest )
    return guest.money >= @cost
  end



end
