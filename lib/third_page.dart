import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/list_controller.dart';
import 'package:getx/controller/tap_controller.dart';
import 'package:getx/my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    ListController listController = Get.put(ListController());
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      width: double.maxFinite,
                      height: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff89dad0)),
                      child: Center(
                        child: Text(
                          "X + Y value = " +
                              Get.find<TapController>().z.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      width: double.maxFinite,
                      height: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff89dad0)),
                      child: Center(
                        child: Text(
                          "Y value = " +
                              Get.find<TapController>().y.value.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            GestureDetector(
              onTap: () {
                Get.to(() => MyHomePage());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)),
                child: Center(
                  child: Text(
                    "X value = " + Get.find<TapController>().y.value.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)),
                child: Center(
                  child: Text(
                    "increase Y",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().totalXY();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)),
                child: Center(
                  child: Text(
                    "Total X + Y",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<ListController>()
                    .setValue(Get.find<TapController>().z);
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)),
                child: Center(
                  child: Text(
                    "Save total",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
