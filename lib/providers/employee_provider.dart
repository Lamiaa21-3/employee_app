

import 'dart:convert';

import 'package:empolyee_info/services/get_employees_services.dart';
import 'package:flutter/material.dart';

import '../models/employee_model.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/employee_model.dart';

class EmployeeProvider extends ChangeNotifier
{
   EmployeeModel? _employeeModel;


List<EmployeeModel> employeeList = [];


   Future getEmployeeServices()  async
   {

     Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users');
     return http.get(url).then((value) async{

       //print(response.body);
       List<dynamic> data = jsonDecode(value.body);

       for(int i = 0 ; i <data.length ; i++)
       {
         employeeList.add(EmployeeModel.fromJson(data[i]));
       }
       print(employeeList[3].address?.street);
      notifyListeners();




     } ).catchError((e){
       print(e);
     });





   }
}