import 'package:uuid/uuid.dart';

class User{
  final uuid;
  final name;
  final email;

  User(this.name, this.email, {String uuid = ""}):
      uuid = uuid.isEmpty ? Uuid().v4() : uuid;

  //convertendo de objeto para map (serialização de objeto)
  Map<String, dynamic> toJson() => {
    "uuid": this.uuid,
    "name": this.name,
    "email": this.email
  };
  // recebe o json e convert de map para objeto (desserialização de objeto)
  factory User.fromJson(json){
    return User(json["Name"], json["email"], uuid: json["uuid"]); // devolve
    //uma instância de cada atributo do json
  }
  @override
  String toString(){
    return 'user{uuid: $uuid, name: $name, email: $email'; 
  }
}