class ErroState implements Exception {
  @override
  String toString() {
    const String error =
        'Erro de Estado, não foi possível carregar o seu Estado!';
    return error;
  }
}
