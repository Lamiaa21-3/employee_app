

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/employee_model.dart';

class EmployeeServices{
  EmployeeModel? employeeModel;
   Future<List<EmployeeModel>> getEmployeeServices()  async
  {

      Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users');
      http.Response response = await http.get(url);
      //print(response.body);
      List<dynamic> data = jsonDecode(response.body);
      List<EmployeeModel> employeeList = [];
      for(int i = 0 ; i <data.length ; i++)
        {
          employeeList.add(EmployeeModel.fromJson(data[i]));
        }
      //EmployeeModel employeeModel = EmployeeModel.fromJson(employeeList);
      //print(employeeModel.phone);
      print(employeeList[0].email);
      return employeeList;



    }



}