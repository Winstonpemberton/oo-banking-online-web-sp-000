class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :transfer_amount

  def initialize(sender, reciever, transfer_amount)
    @sender = sender
    @reciever = reciever
    @transfer_amount = transfer_amount
    @status = "pending"

  end

  
end
