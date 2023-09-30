

import 'package:empolyee_info/services/get_employees_services.dart';
import 'package:flutter/material.dart';

import '../models/employee_model.dart';

class EmployeeProvider extends ChangeNotifier
{
   EmployeeModel? _employeeModel;




  Future<void> employMethod() async
  {
    EmployeeServices services = EmployeeServices();
    EmployeeModel employee = await services.getEmployeeServices();
    _employeeModel = employee;

    notifyListeners();
  }
  EmployeeModel? get employeeModel  => _employeeModel;

}