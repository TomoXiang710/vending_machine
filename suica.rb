class Suica
  DEFAULT_BALANCE = 500

  attr_reader :balance

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  # チャージする
  def charge(amount)
    raise '100円未満はチャージできません' if amount < 100
    @balance += amount
  end

  # チャージ残高を減らす
  def deduct(amount)
    raise '残高が不足しています' if amount > @balance
    @balance -= amount
  end
end