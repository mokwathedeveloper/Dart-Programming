
---

### Exercise 4: Bank Account - README.md

```markdown
# Exercise 4: Bank Account

Create a `BankAccount` class to manage deposits, withdrawals, and balance checks.

## Requirements
- **Fields**:
  - `accountNumber` (String)
  - `balance` (double, defaults to 0)
- **Constructor**:
  - Accepts `accountNumber` and optional `balance`.
- **Methods**:
  - `deposit(amount)`: Adds to balance.
  - `withdraw(amount)`: Subtracts only if sufficient funds.
  - `checkBalance()`: Prints current balance.

## Example Usage
```dart
void main() {
  final account = BankAccount('123456');
  account.deposit(500.0);
  account.checkBalance(); // Output: Current balance: 500.0

  account.withdraw(200.0);
  account.checkBalance(); // Output: Current balance: 300.0

  account.withdraw(400.0); // No change
  account.checkBalance(); // Output: Current balance: 300.0
}