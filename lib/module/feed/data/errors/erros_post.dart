class ErroSource implements Exception {
  @override
  String toString() {
    const String error = 'Erro de API, não foi possível puxar a API!';
    return error;
  }
}

class ErroRepository implements Exception {
  @override
  String toString() {
    const String error =
        'Erro no Repositório, Não foi possível tratar os Dados!';
    return error;
  }
}
