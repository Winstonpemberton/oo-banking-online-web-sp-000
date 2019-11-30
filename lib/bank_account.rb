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
    puts "Your balance is #{balance}"
  end


end
