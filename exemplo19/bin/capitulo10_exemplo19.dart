void main() {
  buscarId();
  print('Capturando um erro assíncrono...');
}

Future<int> buscarId() async {
  try {
    return await Future<int>(() {
      return 42 ~/ 0;
    });
  } on UnsupportedError catch (e) {
    print('Erro capturado: $e');
  } catch (e) {
    print('Demais erros caem aqui');
  }
  return 0;
}

