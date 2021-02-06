import 'package:flutter/material.dart';
import 'package:sampleproject/creategoal.dart';

class AddGoalTask extends StatefulWidget {
  @override
  _AddGoalTaskState createState() => _AddGoalTaskState();
}

class _AddGoalTaskState extends State<AddGoalTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Row(children: [
          ///Container for Content
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "GOAL LIST",
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
                        "Goal",
                        style: TextStyle(
                          fontSize: 50,
                          height: 1.2,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[800],
                        ),
                      ),

                      Spacer(),

                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        ///Change appearance of Completed Task
                        ///Say index 1 is completed
                        return Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey[100]),
                              color: index == 1
                                  ? Colors.purple[400]
                                  : Colors.transparent),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///Show completed check
                              ///Task Title
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Earn incomes by promoting online',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: index == 1
                                              ? Colors.white
                                              : Colors.grey[800]),
                                    ),
                                  ),

                                  ///For Space
                                  SizedBox(
                                    width: 4,
                                  ),

                                  index == 1
                                      ? Icon(
                                          Icons.check_circle,
                                          color: Colors.white,
                                        )
                                      : Container()
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),

                              ///Task Detail
                              Row(
                                children: [
                                  Text(
                                    "25 JAN 2021",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: index == 1
                                            ? Colors.white70
                                            : Colors.grey[500]),
                                  ),
                                  Spacer(),
                                  index == 1
                                      ? Text(
                                          "COMPLETED",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 12,
                                              color: Colors.white),
                                        )
                                      : Text(
                                          "Mission",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: index == 1
                                                  ? Colors.white70
                                                  : Colors.grey[500]),
                                        ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        height: 16,
                        color: Colors.transparent,
                      ),
                      itemCount: 7,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CreateGoalTask(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
