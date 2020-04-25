require_relative 'bank_account'
RSpec.describe BankAccount do
    before(:each) do
        @user1 = BankAccount.new
    end

    it 'has a getter for checking account balance' do
        expect(@user1.checking).to eq(100) 
    end 

    it 'has a getter for savings account balance' do
        expect(@user1.checking + @user1.savings).to eq(100) 
    end

    it 'has a method to withdraw cash' do
        @user1.withdraw(10)
        expect(@user1.checking).to eq(90) 
    end

    it "raises an error if user tries to withdraw more money than the have in the checking account" do
        expect{ @user1.withdraw(200) }.to output("You have insufficent funds. You may not withdraw cash.\n").to_stdout
    end

    it "raises an error when the user attempts to retrieve the total number of bank accounts" do
        expect{ @user1.num_of_accounts }.to raise_error(NoMethodError)
    end

    it "raises  an error when the user attempts to set the interest rate" do
        expect{ @user1.interest_rate }.to raise_error(NoMethodError)
    end
end