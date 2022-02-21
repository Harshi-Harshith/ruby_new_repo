# frozen_string_literal: true

$account_no
class Account
  attr_accessor :name, :account_no, :balance

  def initialize(name, balance)
    @name = name
    $account_no = $account_no + 1
    @account_no = $account_no
    @balance = balance
  end

  # def to_s
  #   "name: #{@name}, account_no: #{@account_no}, balance: #{@balance}"
  # end

  def transfer(sender, recipient, money)
    @send = sender
    # deposit(recipient,money)
    # withdraw(sender,money)
    @rb = recipient.balance + money
    puts "\nThe balance of customer #{recipient.name}  with account number #{recipient.account_no} is #{@rb}"
    @sb = sender.balance - money
    puts "\nThe balance of customer #{sender.name}  with account number #{sender.account_no} is #{sender.balance}"
  end
end

customer_one = Account.new('C1', 30_000)
customer_two = Account.new('C2', 10_000)
customer_one.transfer(customer_one, customer_two, 15_000)
