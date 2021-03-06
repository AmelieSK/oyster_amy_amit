class Card
  MAX_VALUE = 90
  BALANCE = 0
  FARE = 3
  MIN_AMOUNT = 2

  attr_reader :balance

  def initialize
    @balance = BALANCE
  end

  def max_value
    MAX_VALUE
  end

  def add(money)
    return 'You can only top up to £90 maximum' if too_much?(money)

    @balance = money
  end

  def touch_in(station)
    station.name
  end

  def touch_out(station)
    station.name
  end

  def deduct
    @balance -= FARE
  end

  def min_amount
    @balance >= MIN_AMOUNT
  end

  private

  def too_much?(money)
    @balance + money > MAX_VALUE
  end
end
