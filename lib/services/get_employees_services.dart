

import 'package:http/http.dart' as http;

class EmployeeServices{
   Future<void> getEmployeeServices()  async
  {
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    http.Response response = await http.get(url);
    print(response.body);
  }
}