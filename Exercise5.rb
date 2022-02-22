# frozen_string_literal: true

$account_no = 0
class Account
  attr_accessor :name, :account_no, :balance
  attr_reader :name, :account_no, :balance

  def initialize(name, balance)
    @name = name
    $account_no = $account_no + 1
    @account_no = $account_no
    @balance = balance
  end

  def transfer(sender, recipient, money)
    deposit(recipient, money)
    withdraw(sender, money)
  end

  def deposit(recipient, money)
    recipient.balance = recipient.balance + money
    puts "\nThe balance of customer #{recipient.name}  with account number #{recipient.account_no} is #{recipient.balance}"
  end

  def withdraw(sender, money)
    sender.balance = sender.balance - money
    puts "\nThe balance of customer #{sender.name}  with account number #{sender.account_no} is #{sender.balance}"
  end
end


customer_one = Account.new('C1', 30_000)
customer_two = Account.new('C2', 10_000)
customer_one.transfer(customer_one, customer_two, 15_000)

# class Account
#     attr_accessor :name, :account_no, :balance
#     attr_reader :name, :account_no, :balance
#
#     def initialize(name,balance)
#       @name=name
#       @account_no=$account_num
#       @balance=balance
#       $account_num=$account_num+1
#     end
#
#
#     def deposit(customer_two,money)
#       customer_two.balance= customer_two.balance + money
#     end
#
#     def withdraw(customer_one,money)
#       customer_one.balance = customer_one.balance-money
#     end
#
#     def print_details(customer_one,customer_two)
#       puts "\nAccount number: #{customer_one.account_no}"
#       puts "Account holder name: #{customer_one.name}"
#       puts "Account balance: #{customer_one.balance}"
#
#       puts "\nAccount number: #{customer_two.account_no}"
#       puts "Account holder name: #{customer_two.name}"
#       puts "Account balance: #{customer_two.balance}"
#
#     end
#
#     def transaction(customer_one,customer_two,money)
#       withdraw(customer_one,money)
#       deposit(customer_two,money)
#       print_details(customer_one,customer_two)
#     end
# end
