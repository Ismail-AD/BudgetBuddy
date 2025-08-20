import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class AddExpense extends StatelessWidget {
  const AddExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16.0),
      child: Column(
        spacing: 16.0,
        children: [
          Row(
            spacing: 10.0,
            children: [
              Icon(Icons.close),
              Text(
                'Add Expense',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Input Some Amount';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    filled: true,
                    fillColor: Color(0xffE7EDF4),
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
