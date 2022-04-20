// ignore_for_file: empty_constructor_bodies, deprecated_member_use

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  NewTransaction(this.addTx, {Key? key}) : super(key: key);
  void submitData() {
    final enteredTitle = titleController.text;
    final enteredPrice = double.parse(priceController.text);
    if (enteredTitle.isEmpty || enteredPrice <= 0) {
      return;
    }
    addTx(titleController.text, double.parse(priceController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              onSubmitted: (_) => submitData,
              onChanged: (val) {
                //titleinput = val;
              },
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
              controller: priceController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
              onChanged: (val) {
                //priceinput = val;
              },
            ),
            TextButton(
              // ignore: prefer_const_constructors
              child: Text('Add Transactions'),

              onPressed: submitData,

              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
