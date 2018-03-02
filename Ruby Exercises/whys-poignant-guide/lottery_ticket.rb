class LotteryTicket

# this is a constant
# keeps numbers between 1 and 24
  NUMERIC = 1...25

  attr_reader :picks, :purchased

  def initialize( *picks )
    if picks.length != 3
      raise ArgumentError, "three numbers must be picked"
    elsif picks.uniq.length != 3
      raise ArgumentError, "the three picks must be different numbers"
# works without the block arguments, why?
    elsif picks.detect { |picked_nums| not NUMERIC === picked_nums }
      raise ArgumentError, "the three picks must be numbers between 1 and 25"
    end
    @picks = picks
    @purchased = Time.now
  end

end

# makes sure the number results between 1 and 25
ticket = LotteryTicket.new( rand( 25 ) + 1,
            rand( 25 ) + 1, rand( 25 ) + 1 )
p ticket.picks
