import 'dart:io';

void main() {
  bool pertenceFibonacci(int numero) {
  if (numero == 0 || numero == 1) {
    return true;
  }

  int a = 0, b = 1;
  
  while (b < numero) {
    int temp = a + b;
    a = b;
    b = temp;
  }
  return b == numero;
}

  try {
    print("Me diga um número para checar se está na sequencia de Fibonacci");
    int numeroInput = int.parse(stdin.readLineSync()!);

    if (pertenceFibonacci(numeroInput)) {
      print("O número $numeroInput está na sequencia de Fibonacci");
    } else {
      print("O número $numeroInput nao está na sequencia de Fibonacci");
    }
  } catch (e) {
    print("Por favor, insira um número. Erro: $e ");
  }
}