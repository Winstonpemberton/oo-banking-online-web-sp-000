class BankAccount
  attr_accessor :balance
  attr_reader :name, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"

  end

  def deposit(amount)
    @balance = balance + amount
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    if balance > 0 && status == "open"
      true
    end
  end


end
