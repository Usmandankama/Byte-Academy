import 'package:flutter/material.dart';

class CoursesTile extends StatefulWidget {
  const CoursesTile({super.key});

  @override
  State<CoursesTile> createState() => _CoursesTileState();
}
//TODO: make the padding parent a widget to have different info from a database
class _CoursesTileState extends State<CoursesTile> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(215, 255, 223, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  Icon(Icons.javascript),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Course Title"),
                  SizedBox(
                    height: 5,
                  ),
                  Row(children: [
                    Icon(Icons.access_time),
                    SizedBox(width: 5),
                    Text('duration')
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Row(children: [
                    Icon(Icons.class_rounded),
                    SizedBox(width: 5),
                    Text('10 lesson')
                  ]),
                ],
              ),
            ),
          );
        });
  }
}
