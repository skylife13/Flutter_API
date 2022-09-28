import 'package:currency_textfield/currency_textfield.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/Home.dart';
import 'package:flutter_api/shared/constant.dart';

class Pindah extends StatefulWidget {
  static const routeName = '/Pindah';
  const Pindah({Key? key}) : super(key: key);

  @override
  State<Pindah> createState() => _PindahState();
}

class _PindahState extends State<Pindah> {
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
            'Pindah',
            style: TextStyle(color: linear),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  const SizedBox(height: 10),
                  Text(
                    "Start Date",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  //------------------------ Start Date ---------------------------//
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      width: 350.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: DateTimePicker(
                        decoration: InputDecoration(border: InputBorder.none),
                        initialValue:
                            '', // initialValue or controller.text can be null, empty or a DateTime string otherwise it will throw an error.
                        type: DateTimePickerType.date,
                        dateLabelText: 'Start Date',
                        firstDate: DateTime(1995),
                        lastDate: DateTime.now().add(Duration(
                            days:
                                365)), // This will add one year from current date
                        validator: (value) {
                          return null;
                        },
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            setState(() {
                              _selectedDate = value;
                            });
                          }
                        },
                        // We can also use onSaved
                        onSaved: (value) {
                          if (value!.isNotEmpty) {
                            _selectedDate = value;
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Input",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 2),
                  //---------------------- Money Currency------------------------------//
                  Container(
                    width: 300.0,
                    height: 50.0,
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
                  const SizedBox(height: 10),
                  Text(
                    "Keterangan",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 2),
                  //---------------------- DESCRIPTION------------------------------//
                  Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
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
