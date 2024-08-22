double x = 1;
double fx = (-0.5 * (x * x)) + (2.5 * x) + 4.5;
double tolerancia = 0.001;

List<double> coeficientes = [4.5, 2.5, -0.5];

double gx = (5 * x + 9);

int encontrarJerarquia(List<double> coeficientes) {
  for (int i = coeficientes.length - 1; i >= 0; i--) {
    if (coeficientes[i] != 0) {
      return i;
    }
  }
  return -1;
}
