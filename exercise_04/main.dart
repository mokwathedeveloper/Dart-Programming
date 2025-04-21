class BankAccount {
  String accountNumber;
  double balance;

  // Constructor with optional balance (defaults to 0.0)
  BankAccount(this.accountNumber, [this.balance = 0.0]);

  // Deposit method
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)} | New Balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Deposit failed: Amount must be positive.");
    }
  }

  // Withdraw method
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrew: \$${amount.toStringAsFixed(2)} | Remaining Balance: \$${balance.toStringAsFixed(2)}");
    } else if (amount > balance) {
      print("Withdrawal failed: Insufficient funds. Balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Withdrawal failed: Invalid amount.");
    }
  }

  // Check balance method
  void checkBalance() {
    print("Current balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  final account = BankAccount('123456');

  account.deposit(500.0);
  account.checkBalance();

  account.withdraw(200.0);
  account.checkBalance();

  account.withdraw(400.0); // Should show insufficient funds
  account.checkBalance();

  account.deposit(-2); // Invalid deposit
  account.withdraw(1000); // Invalid withdrawal
  account.withdraw(0); // Invalid withdrawal
}
