class Contato{
  //maps the contents of the API
  String id;
  String name;
  String email;

  Contato(this.name, this.email, {this.id = ""});

  Map<String, dynamic> toMap() => {
    "name": name,
    "email": email
  };

  factory Contato.fromJson(json){
    return Contato(json["name"], json["email"], id: json["id"]);
  }

  @override
  String toString() {
    return 'Contato{id: $id, name: $name, email: $email}';
  }
}