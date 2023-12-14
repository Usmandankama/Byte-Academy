import 'package:flutter/material.dart';

class CoursesTile extends StatefulWidget {
  const CoursesTile({super.key});

  @override
  State<CoursesTile> createState() => _CoursesTileState();
}

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
                color: const Color.fromARGB(255, 188, 255, 200),
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
                  Row(children: [Icon(Icons.access_time), Text('duration')]),
                  SizedBox(
                    height: 5,
                  ),
                  Row(children: [Icon(Icons.class_rounded), Text('10 lesson')]),
                ],
              ),
            ),
          );
        });
  }
}
