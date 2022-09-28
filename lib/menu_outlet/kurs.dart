import 'package:currency_textfield/currency_textfield.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/Home.dart';
import 'package:flutter_api/shared/constant.dart';

class Kurs extends StatefulWidget {
  static const routeName = '/Kurs';
  const Kurs({Key? key}) : super(key: key);

  @override
  State<Kurs> createState() => _KursState();
}

class _KursState extends State<Kurs> {
  late String _selectedDate;
  late String fileName;
  late String downloadURL;
  bool idCheck = true;
  late DateTime _dateTime;
  final _formkey = GlobalKey<FormState>(); //formkey
  final TextEditingController dateController =
      TextEditingController(); //controller
  final TextEditingController keteranganController =
      TextEditingController(); //controller
  final TextEditingController descriptionController =
      TextEditingController(); //controller
  final CurrencyTextFieldController currencycontroller =
      CurrencyTextFieldController(); //controller
  @override
  void initState() {
    _selectedDate = "";
    super.initState();
  }

  var dropdownvalue = 'Nama Outlet';
  var items = [
    'Nama Outlet',
    'Nama Outlet',
    'Nama Outlet',
    'Nama Outlet',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Kurs',
            style: TextStyle(color: linear),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white, //<-- SEE HERE
              ),
              child: DropdownButton(
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  }),
            ),
            Form(
              key: _formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "Dari",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 2),
                  //---------------------- Money Currency------------------------------//
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: 400.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextFormField(
                        controller: currencycontroller,
                        textAlign: TextAlign.right,
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: '0',
                          alignLabelWithHint: true,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Ke",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 2),
                  //---------------------- Money Currency------------------------------//
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: 400.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextFormField(
                        controller: currencycontroller,
                        textAlign: TextAlign.right,
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: '0',
                          alignLabelWithHint: true,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),

            SizedBox(height: 300),

            //tombol "SUBMIT"

            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              child: MaterialButton(
                minWidth: 150,
                height: 30,
                onPressed: () {
                  Navigator.of(context).pushNamed(Home.routeName);
                },
                child: const Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: kPrimaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
