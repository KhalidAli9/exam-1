
class Model{
  String? name;
  int? age;
  String? address;
  String? password;
  String? email;


  Model({
    this.name,
    this.age,
    this.address,
    this.password ,
    this.email,
   
  });

  factory Model.fromJson(Map userMap, {required Map<String , dynamic> json}){
    return Model(
        password: json["password"],
        email: json["email"],
        name: json["name"],
        age: json["json"],
        address: json["address"],


    );
  }

  ToMap(){
  return{
      "password" : password,
      "email" : email,
      "name" : name,
      "age" : age,
      "address" :address,
      
  };
}
}