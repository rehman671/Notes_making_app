import 'package:flutter/material.dart';
import 'package:my_new_flutter/Screens/welcome.dart';
import 'package:my_new_flutter/app_button.dart';

class FormScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FormState();

}
class FormState extends State<FormScreen> {
  TextEditingController textfieldcontroller = TextEditingController();
  TextEditingController despfieldcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.only(top: 80, left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children:  [
                  GestureDetector(
                    onTap: (){Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => WelcomeScreen()));

                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Add New Notes",
                    style:  TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1C24),
                    border: Border.all(width: 1, color: const Color(0xFF454545)),
                    borderRadius: BorderRadius.circular(10)),
                child:  TextField(
                    style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    controller: textfieldcontroller,
                    decoration:const  InputDecoration(
                        border:  OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Enter Notes Title",
                        hintStyle:
                            TextStyle(fontSize: 15, color: Color(0xFF959595)))),
              ),
              Container(
                height: 350,
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1C24),
                    border: Border.all(width: 1, color: const Color(0xFF454545b)),
                    borderRadius: BorderRadius.circular(10)),
                child:  TextField(
                  controller: despfieldcontroller,
                    style: const TextStyle(color: Colors.white),
                    minLines: 1,
                    maxLines: 10,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Type here",
                        hintStyle:
                            TextStyle(fontSize: 15, color: Color(0xFF959595)))),
              ),
              const SizedBox(height: 25),
              AppButton(
                label: "Save",
                onPress: () {
                  onSave(context);
                },
              )
            ],
          ),
        ),
      ),
    );

  }
  void onSave(BuildContext context){
    var data = NotesData((textfieldcontroller.text),despfieldcontroller.text);
  Navigator.pop(context,data);
  }
}

class NotesData{
  final String title;
  final String descp;

  NotesData(this.title, this.descp);
  }

