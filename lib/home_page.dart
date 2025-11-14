import 'package:flutter/material.dart';
import 'package:todo_list/utils/todo_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List TodoList = [
    ["TODO", false],
    ["TODO", false],
    ["TODO", false],
    ["TODO", false],
    ["TODO", false],
  ];
    

    void checkBoxChanged(bool? value, int index){
      setState(() {
        TodoList[index][1] = !TodoList[index][1];
      }
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 162, 251),
      appBar: AppBar(
        title: Text("To Do"),
        backgroundColor: Colors.deepPurple,
        elevation: 10,
      ),
      body: ListView.builder(
        itemCount: TodoList.length,
        itemBuilder: (context, index){
          return TodoItem(
            isChecked: TodoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            todoText: TodoList[index][0]);
        }
        )
      );
  }
}