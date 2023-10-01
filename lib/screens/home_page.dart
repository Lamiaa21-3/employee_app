import 'package:empolyee_info/providers/employee_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/employee_model.dart';
import '../services/get_employees_services.dart';
import '../widgets/employee_widget.dart';

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
                return EmployeeWidget( employeeModel: provider.employeeList[index]) ;
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
