class Contato{
  int id;
  String nome;
  String email;

  Contato(this.nome, this.email, {this.id = 0});


  @override
  String toString() {
    return 'Contato{id: $id, nome: $nome, email: $email}';
  }
} 