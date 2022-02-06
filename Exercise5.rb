$account_no
class Account
    attr_accessor :name, :account_no, :balance

    def initialize(name,balance)
        @name=name
        $account_no = $account_no + 1
        @account_no = $account_no
        @balance=balance
    end

    def to_s
        "name: #{@name}, account_no: #{@account_no}, balance: #{@balance}"

    def transfer(sender, recipient, money)
        deposit(recipient,money)
        withdraw(sender,money)
    end

    def deposit(recipient,money)
        recipient.balance = recipient.balance + money
        puts "\nThe balance of customer #{recipient.name}  with account number #{recipient.account_no} is #{recipient.balance}"
    end

    def withdraw(sender,money)
        sender.balance = sender.balance - money
        puts "\nThe balance of customer #{sender.name}  with account number #{sender.account_no} is #{sender.balance}"
    end

end

customer_one = Account.new("C1",30000)
customer_two = Account.new("C2",10000)
customer_one.transfer(customer_one,customer_two,15000)

