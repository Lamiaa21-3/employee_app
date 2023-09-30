class EmployeeModel {
  final int id;
  final String name;
  final String email;
  final String phone;

  EmployeeModel({ required this.id,required this.name, required this.email, required this.phone});

  factory EmployeeModel.fromJson(  jsonData) {
    return EmployeeModel(
      id: jsonData['id'],
        name: jsonData['name'],
        email: jsonData['email'],
        phone: jsonData['username'],
    );
  }
}
