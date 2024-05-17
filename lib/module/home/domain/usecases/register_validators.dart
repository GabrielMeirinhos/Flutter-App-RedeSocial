abstract class IValidator {
  String? validateEmail(String? value);
  String? validatePassword(String? value);
  String? validatePasswordConfirmation({required passWord, required passWord2});
}

class Validator implements IValidator {
  bool containsSpecialChars(String value) {
    String specialChars = '!@#\$%¨&*[]';
    for (int i = 0; i < specialChars.length; i++) {
      if (value.contains(specialChars[i])) {
        return true;
      }
    }
    return false;
  }

  @override
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "A senha não pode ser vazia";
    }
    if (!containsSpecialChars(value)) {
      return 'A senha precisa ter algum caracter especial (!@\$%¨&*[])';
    }
    if (value.length < 6) {
      return 'A senha não pode ser menor que 6 elementos';
    }
    return null;
  }

  @override
  String? validatePasswordConfirmation(
      {required passWord, required passWord2}) {
    if (passWord != passWord2) {
      return 'As senhas precisam ser iguais';
    }
    return (null);
  }

  @override
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "O e-mail não pode ser vazio";
    }
    if (!value.contains('@')) {
      return 'O e-mail não é válido';
    }
    if (value.length < 5) {
      return 'O e-mail precisa ter no mínimo 5 caracteres';
    }
    return null;
  }
}
