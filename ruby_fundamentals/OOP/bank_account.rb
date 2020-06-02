class BankAccount 
@@num_of_accounts=0  

    attr_reader :checking, :savings, :account_num
    
    private 
        def initialize
            @checking = 100
            @savings = 0
            @account_num =0
            @interest_rate = 0.1
        end

        def generate_account
            @@num_of_accounts += 1
            @account_num = rand(99999999)
            self
        end
    public
        def account_info
            generate_account
            puts "Your account number: #{@account_num}"
            puts "There are #{@@num_of_accounts} user accounts at the bank."
            self
        end
    
        def checking_account
            puts "You have $#{@checking} in your checking account."
            self
        end 

        def savings_account
            puts "You have $#{@savings} in your savings account."
            self
        end

        def deposit_checking amt 
            @checking += amt
            puts "You have added $#{amt} to your checking account. Your new balance is $#{@checking}."
            self
        end

        def deposit_saving amt 
            @savings += amt
            puts "You have added $#{amt} to your savings account. Your new balance is $#{@savings}."
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
user1.account_info
user1.checking_account.savings_account.withdraw(10)
user1.total_amt.account_information

user2 = BankAccount.new
user2.account_info
user2.deposit_checking(220).account_information.deposit_saving(100)
# user2.checking = 200 
user2.account_information


