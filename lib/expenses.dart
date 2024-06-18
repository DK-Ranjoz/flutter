import 'package:expense_tracking_app/expenses_list.dart';
import 'package:expense_tracking_app/models/expense.dart';
import 'package:expense_tracking_app/test_files/Budget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Chapo Beans', amount: 150, date: DateTime.now(), category: Category.food),
    Expense(title: 'Screw driver', amount: 300, date: DateTime.now(), category: Category.work),
    Expense(title: 'Summer Fest', amount: 45000, date: DateTime.now(), category: Category.leisure)
  ];
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [ 
              Text('Expenditure'),
          Expanded(
            child: BudgetList(),
          ),
        ],
      ),
    );
  }
}
