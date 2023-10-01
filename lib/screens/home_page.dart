import 'package:empolyee_info/providers/employee_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/employee_model.dart';
import '../services/get_employees_services.dart';

class HomePageScreens extends StatefulWidget {
  const HomePageScreens({Key? key}) : super(key: key);

  @override
  State<HomePageScreens> createState() => _HomePageScreensState();
}

class _HomePageScreensState extends State<HomePageScreens> {



  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Empolyees'),
        ),
        body: Consumer<EmployeeProvider>(
          builder: (_,provider,__) =>
           ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                             ' ${provider.employeeList[index].name}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              ' ${provider.employeeList[index].email}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text( '${provider.employeeList[index].phone} ',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 1,
                );
              },
              itemCount: provider.employeeList.length,
          ),
        ),
    );
  }
}
