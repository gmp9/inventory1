class Transaction < Object
  include ActiveModel::Model
  attr_accessor :bal
  attr_accessor :dep
  attr_accessor :wdl
  validates_presence_of :bal
  validates_presence_of :dep
  validates_presence_of :wdl
  
  def balance(amt1,amt2,amt3)
    @bal = amt1 + amt2 - amt3 
  end
end
