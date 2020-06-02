class BankAccount 
@@num_of_accounts=0  

    attr_accessor :checking, :savings, :account_num
    
    private 
        def initialize
            @checking = 100
            @savings = 0
            @account_num =0
            @interest_rate = 0.1
        end
    
    public 
        def generate_account
            @@num_of_accounts += 1
            @account_num = rand(99999999)
            puts "Your account number: #{@account_num}"
            puts "There are #{@@num_of_accounts} user accounts at the bank."
        end

        public 
        def checking_account
            puts "You have $#{@checking} in your checking account."
            self
        end 

        def savings_account
            puts "You have $#{@savings} in your savings account."
            self
        end

        def deposit amt 
            @checking += amt
            puts "You have added $#{amt} to your checking account. Your new balance is $#{@checking}."
            self
        end
        
        def withdraw amt
            @checking -= amt
            if @checking < 0
                @checking += amt
                puts "You have insufficent funds. You may not withdraw cash."
            else
                puts "You have withdrawn $#{amt}. You now have $#{@checking} remaining in your checking account."
            end
            self
        end 

        def total_amt 
            puts "You have $#{@checking} in your checking and $#{@savings} in your savings account."
            self
        end

        def account_information
            puts "Your account number: #{@account_num}"
            puts "You have $#{@checking} in your checking and $#{@savings} in your savings account."
            puts "Your interest rate is: #{@interest_rate}."
            self
        end 
end 


user1 = BankAccount.new
user1.generate_account
user1.checking_account.savings_account.withdraw(10)
user1.total_amt.account_information
user2 = BankAccount.new
user2.generate_account
user2.deposit(220).account_information


