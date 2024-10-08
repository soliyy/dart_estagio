import 'dart:io';

void main() {
  print("Me diga uma palavra: ");
  String palavraInput = stdin.readLineSync()!.toLowerCase();

  int contador = 0;

  for (int i = 0; i < palavraInput.length; i++) {
    if (palavraInput[i] == "a") {
      contador++;
    }
  }

  if (contador > 0) {
    print("Existe $contador 'A' na sua palavra");
  } else {
    print("Nao tem a letra 'A' na sua palavra");
  }
}
