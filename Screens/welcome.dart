
import 'package:flutter/material.dart';
import 'package:my_new_flutter/Screens/form.dart';
import 'package:my_new_flutter/Screens/signup.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomeState();
  }
}

class WelcomeState extends State<WelcomeScreen> {
  List<NotesData> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push<NotesData>(MaterialPageRoute(builder: (_) => FormScreen()))
              .then((value) => setState(() {
                    notes.add(value!);
                  }));
        },
        backgroundColor: Color(0xFF16121A),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 80, left: 35, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Abdul Rehman",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) =>Signup()));
                  },
                    child: const Icon(Icons.logout,color: Colors.white,)
                )
              ],
            ),
            Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFF454545))),
                child: Row(
                  //Search bar
                  children: const [
                    Icon(Icons.search, color: Color(0xFF959595)),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search Keyword",
                            hintStyle: TextStyle(
                                fontSize: 15, color: Color(0xFF959595))),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: notes.isNotEmpty ? ListView.builder(
                itemCount: notes.length,
                itemBuilder: info,
              ): const Center(
                child: Text("No Notes are added",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget info(BuildContext context, int index) => Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Color(0xFF16121A), borderRadius: BorderRadius.circular(10)),
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notes[index].title,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Karachi,Pakistan",
                    style: TextStyle(color: Color(0xFF959595), fontSize: 12),
                  )
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 15),
              child: const Icon(
                Icons.edit,
                color: Color(0xFF959595),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    setState((){
                      notes.removeAt(index);

                    });
                  },
                  child: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ))
          ],
        ),
      );
}
