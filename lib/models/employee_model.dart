
class EmployeeModel {
  //final int id;
   String? name;
   String? email;
   String? phone;



   Data.fromJson( jsonData) {

     // id: jsonData['id'],
        name= jsonData['name'];
        email= jsonData['email'];
        phone= jsonData['phone'];

  }
}
