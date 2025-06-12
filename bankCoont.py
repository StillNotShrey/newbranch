class BankAccount:
    def __init__(this, accNo, accHol, bal):
        this.accNo = accNo
        this.accHol = accHol
        this.bal = bal
    def get_account(this):
        return f"acc: {this.accNo},{this.accHol},{this.bal}"
    def deposit(this, amt):
        if amt > 0:
            this.bal += amt
            print(this.bal)
        else:
            print("Not valid")
    def withdraw(this, rem):
        if 0 < rem < this.bal:
            this.bal -= rem
            print(this.bal)
        else:
            print("Not possible")
    def cala(this):
        return this.bal * 0.02


newObj = BankAccount(6969,"abc",10000)
newObj.deposit(100)
newObj.withdraw(190)
newObj.cala()
newObj2 = BankAccount(3434,"xyz",9999)
newObj2.deposit(100)
newObj2.withdraw(330)
newObj2.cala()