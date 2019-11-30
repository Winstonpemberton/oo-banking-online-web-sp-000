class Transfer
  require 'pry'
  # your code here
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    if @status = "pending" && sender.balance < @amount
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "complete"
    else
      binding.pry
      @status = "rejected"
      "Transaction rejected. Please check your account balance"
    end
  end


end
