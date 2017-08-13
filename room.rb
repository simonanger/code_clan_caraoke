class Room

  attr_accessor(:number, :capacity, :guestlist, :songlist, :cost, :drinks_purchased)

  def initialize(number, capacity, cost)
    @number = number
    @capacity = capacity
    @cost = cost
    @guestlist = []
    @songlist = []
    @drinks_purchased = []
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

  def favourite_song_first( guest )
    if @songlist[0].song_name == guest.favourite_song
      return "Wow"
  else
      return "These look ok"
    end
  end

  def favourite_song_in_list(guest)
    for song in @songlist do
      @song_name == guest.favourite_song
      return "Wow"
    end
  end

  def spend_total
    @guestlist.count * @cost
  end

  def add_drink( drink )
    @drinks_purchased.push(drink)
  end

  def drink_spend
   @drinks_purchased.count * 3.50
  end

end
