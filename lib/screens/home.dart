import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import '../controller/counter_controller.dart';


class HomeScreen  extends StatelessWidget {

  final controller=Get.put(CounterController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("The counter value is:", style: TextStyle(fontSize: 20),),
            Obx(()=> Text("${controller.count}",style: TextStyle(
              fontSize: 40,fontWeight: FontWeight.bold
            ),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: ()=>controller.increment(), child: Text("Add")),
                ElevatedButton(onPressed: ()=>controller.decrement(), child: Text("Subtract")),
                ElevatedButton(onPressed: ()=>controller.reset(), child: Text("Reset")),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
