import 'package:flutter/material.dart';
import 'package:sampleproject/goal.dart';

class CreateGoalTask extends StatefulWidget {
  @override
  _CreateGoalTaskState createState() => _CreateGoalTaskState();
}

class _CreateGoalTaskState extends State<CreateGoalTask> {
  @override
  TextEditingController _Controller = TextEditingController();
  String goalList = '';

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            child: Row(
              children: [
                ///Container for Content
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CREATE GOAL LIST",
                          style: TextStyle(
                              fontSize: 18,
                              height: 1.2,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w900,
                              color: Colors.blueGrey[200]),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            ///Text
                            Text(
                              "Create",
                              style: TextStyle(
                                fontSize: 50,
                                height: 1.2,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[800],
                              ),
                            ),

                            Spacer(),

                            IconButton(
                              icon: Icon(Icons.done),
                              onPressed: () {
                                Navigator.of(context).push(_createRoute());
                              },
                            ),
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.all(20),
                            child: TextField(
                              controller: _Controller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Goal',
                              ),
                              onChanged: (text) {
                                setState(() {
                                  goalList = text;
                                  //you can access nameController in its scope to get
                                  // the value of text entered as shown below
                                  //fullName = nameController.text;
                                });
                              },
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AddGoalTask(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
