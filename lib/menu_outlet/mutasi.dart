import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/Home.dart';
import 'package:flutter_api/shared/constant.dart';

class Mutasi extends StatefulWidget {
  static const routeName = '/Mutasi';
  const Mutasi({Key? key}) : super(key: key);

  @override
  State<Mutasi> createState() => _MutasiState();
}

class _MutasiState extends State<Mutasi> {
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
            'Mutasi',
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
                  //------------------------ Start Date ---------------------------//
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 40.0),
                    child: DateTimePicker(
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
                  const SizedBox(height: 10),

                  //---------------------- DESCRIPTION------------------------------//
                  Container(
                    width: 300.0,
                    height: 75.0,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      decoration:
                          textInputDecoration.copyWith(hintText: 'Keterangan'),
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
