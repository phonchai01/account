import 'package:flutter/foundation.dart';
import 'package:sim_app/models/transaction.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(title: 'หนังสือ', amount: 300, date: DateTime.now()),
    Transaction(title: 'เสื้อ', amount: 500, date: DateTime.now()),
    Transaction(title: 'รองเท้า', amount: 1000, date: DateTime.now()),
  ];

  List<Transaction> getTransaction(){
    return transactions;
  }

  void addTransaction(Transaction transaction){
    transactions.add(transaction);
    notifyListeners();
  }

}
