class Account {
  // variables definition
  late int _accountNo;
  late String _name;
  late String _dateOfBirth;
  late double _amount;
  late DateTime _dateCreated;

  // this method to initialize the variable
  void insert(accountN, name, dataOfBrith, amount, dataCreated) {
    this._accountNo = accountN;
    this._name = name;
    this._dateOfBirth = dataOfBrith;
    this._amount = amount;
    this._dateCreated = dataCreated;
  }

  // this method to add money in account
  void deposit(name, accountN, money) {
    if ((name == this._name) && (accountN == this._accountNo)) {
      this._amount = this._amount + money;
    }
  }

  // this method to ebit from the account at a certain value
  void withdraw(value) {
    if (this._amount > value) {
      this._amount = this._amount - value;
      print('The Residual value is: ${this._amount}');
    } else {
      print("The amount '${this._amount}' is less from the debit '${value}.");
    }
  }

  // this method to see the balance on the account
  void checkBalance() {
    print('The total amount is: ${this._amount}');
  }

  // this method to show all information about account
  void showInformation() {
    print('The name is: ' +
        this._name +
        '\n'
            'The data Of Brith is: ' +
        this._dateOfBirth +
        '\n'
            'The account number is: ' +
        this._accountNo.toString() +
        '\n'
            'The total amount is: ' +
        this._amount.toString() +
        '\n'
            'The account creation date is: ' +
        this._dateCreated.toString());
  }
}

void main() {
  // Object 1
  var Ali = Account();
  Ali.insert(1, 'Ali', '21-1-1999', 100.10, DateTime.now());
  Ali.deposit('Ali', 1, 200.1);
  Ali.withdraw(20);
  Ali.checkBalance();
  Ali.showInformation();

  // Object 2
  var Ahmed = Account();
  Ahmed.insert(1, 'Ahmed', '1-1-1989', 300.10, DateTime.now());
  Ahmed.deposit('Ali', 1, 200.1);
  Ahmed.withdraw(20);
  Ahmed.checkBalance();
  Ahmed.showInformation();

  // Object 3
  var Muna = Account();
  Muna.insert(1, 'Muna', '21-1-1999', 1000.10, DateTime.now());
  Muna.deposit('Muna', 1, 280.1);
  Muna.withdraw(800);
  Muna.checkBalance();
  Muna.showInformation();
}
