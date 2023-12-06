import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:taskapp/controllers/task_controller.dart';

import 'package:taskapp/pages/addtask.dart';
import 'package:taskapp/utils/appbar.dart';
import 'package:taskapp/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: Center(
            child: Text(
          'Task Scheduling App',
          style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              height: 35,
              width: 35,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  'lib/images/user.png',
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat.yMMMMd().format(DateTime.now()),
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      'Today',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                MyButton(
                  label: '+ Add task',
                  onTap: () async {
                    await Get.to(() => AddTaskPage());
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 16),
            child: DatePicker(DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.deepPurple,
                selectedTextColor: Colors.white,
                dateTextStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                dayTextStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                monthTextStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                )),
          ),
          _showTasks(),
        ],
      ),
    );
  }

  _showTasks() {
    return Expanded(
      child: Obx(() {
        return ListView.builder(
            itemCount: _taskController.taskList.length,
            itemBuilder: (_, context) {
              print("working");
              return Container(
                // margin: EdgeInsets.only(bottom: 10),
                width: 100,
                height: 50,
                color: Colors.green,
              );
            });
      }),
    );
  }
}
