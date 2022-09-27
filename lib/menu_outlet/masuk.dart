import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/Home.dart';
import 'package:flutter_api/shared/constant.dart';
import 'package:date_time_picker/date_time_picker.dart';

class Masuk extends StatefulWidget {
  static const routeName = '/Masuk';

  const Masuk({Key? key}) : super(key: key);

  @override
  State<Masuk> createState() => _MasukState();
}

class _MasukState extends State<Masuk> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Masuk',
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

            SizedBox(height: 16),

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
