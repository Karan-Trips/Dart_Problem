import 'dart:io';

void main() {
  SavingAccount s = SavingAccount();
  CurrentAccount c = CurrentAccount();

  while (true) {
    print("------------||- Menu --||---------");
    print("1. Deposit to Savings Account");
    print("2. Withdraw from Savings Account");
    print("3. Display Savings Account Balance");
    print("4. Deposit to Checking Account");
    print("5. Withdraw from Checking Account");
    print("6. Display Checking Account Balance");
    print("7. Transfer from Checking to Savings Account");
    print("8. Exit");
    print("Enter ur choice:");

    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter amount to deposit to Savings Account:");
        var amount = double.parse(stdin.readLineSync()!);
        s.deposit(amount);
        break;
      case 2:
        print("Enter amount to withdraw from Savings Account:");
        var amount = double.parse(stdin.readLineSync()!);
        s.withdraw(amount);
        break;
      case 3:
        s.getbalance();
        break;
      case 4:
        print("Enter amount to deposit to Current Account:");
        var amount = double.parse(stdin.readLineSync()!);
        c.deposit(amount);
        break;
      case 5:
        print("Enter amount to withdraw from Checking Account:");
        var amount = double.parse(stdin.readLineSync()!);
        c.withdraw(amount);
        break;
      case 6:
        c.getbalance();
        break;
      case 7:
        print("Enter amount to transfer from Checking to Savings Account:");
        var transferAmount = double.parse(stdin.readLineSync()!);
        c.tnsfr(s, transferAmount);
        break;
      case 8:
        exit(0);

      default:
        print("!!Invalid choice !!");
    }
  }
}

abstract class BankAccount {
  double balance = 0;

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn amount = $amount");
    } else {
      print("Insufficient funds for withdrawal");
    }
  }

  void deposit(double amount) {
    balance += amount;
    print("Current balance = $balance\n");
  }

  void getbalance() {
    print("Current balance = $balance with intrest \n");
  }
}

class SavingAccount extends BankAccount {
  int rate = 10;
  int t = 5;

  void deposit(double amount) {
    print("------Saving account ---");
    super.deposit(amount);
    intreset();
  }

  void withdraw(double amount) {
    super.withdraw(amount);
  }

  void intreset() {
    double interest = balance * rate * t / 100;
    balance += interest;
    print("Interest calculated = $interest");
  }
}

class CurrentAccount extends BankAccount {
  void deposit(double amount) {
    print("-------- Current account ------");
    super.deposit(amount);
  }

  void withdraw(double amount) {
    super.withdraw(amount);
  }

  void getbalance() {
    print("Current balance = $balance");
  }

  void tnsfr(SavingAccount s, double trns) {
    print("account transfer to =$s");
    if (trns <= balance) {
      getbalance();
      s.deposit(balance + trns);
      print(
          "Current balance after transfer in Current Account is  = ${balance - trns}\n");
    } else {
      print("Insufficient Amount for transfer");
    }
  }
}
