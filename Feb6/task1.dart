void main() {
  SavingAccount s = SavingAccount();
  CheckingAccount c = CheckingAccount();
  // s.display();
  s.deposit(120);
  s.withdraw(10);
  s.getbalance();
  print("---------------Checking-Account--------");
  c.deposit(500);
  c.withdraw(440);
  c.getbalance();
  print("-----------Transfer-----------");
  c.tnsfr(s, 30);
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
    print("Current balance = $balance\n");
  }
}

class SavingAccount extends BankAccount {
  int rate = 10;
  int t = 5;
  void deposit(double amount) {
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

class CheckingAccount extends BankAccount {
  void deposit(double amount) {
    super.deposit(amount);
  }

  void withdraw(double amount) {
    super.withdraw(amount);
  }

  void getbalance() {
    print("Current balance = $balance");
  }

  void tnsfr(SavingAccount s, double trns) {
    print("acccount transfer to =$s");
    if (trns <= balance) {
      getbalance();
      s.deposit(balance + trns);
      print("Current balcne after transer = ${balance - trns}\n");
    } else {
      print("Insufficient funds for transfer");
    }
  }
}
