

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/employee_model.dart';
import '../providers/employee_provider.dart';
class EmployeeWidget extends StatelessWidget {
  EmployeeWidget({Key? key, required this.employeeModel}) : super(key: key);
  final EmployeeModel employeeModel;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
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
                      ' ${employeeModel.name}',
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
                      ' ${employeeModel.email}',
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
                    Text('${employeeModel.phone} ',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text('street : ${employeeModel.address?.suite}'),
                  SizedBox(height: 15,),
                  Text('suite : ${employeeModel.address?.city}'),
                  SizedBox(height: 15,),
                  Text('city : ${employeeModel.address?.street}'),
                  SizedBox(height: 15,),
                  Text('zipcode : ${employeeModel.address?.zipcode}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}