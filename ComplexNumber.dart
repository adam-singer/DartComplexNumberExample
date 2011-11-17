interface ComplexNumber {
  String toString();
  double get real();
  double get imaginary();
  double get magnitude();
  ComplexNumber operator +(ComplexNumber other);
  ComplexNumber add(ComplexNumber complexNumber1, ComplexNumber complexNumber2);
  ComplexNumber operator -(ComplexNumber other);
  ComplexNumber subtract(ComplexNumber complexNumber1, ComplexNumber complexNumber2);
  ComplexNumber operator *(ComplexNumber other);
  ComplexNumber multiply(ComplexNumber complexNumber1, ComplexNumber complexNumber2);
  ComplexNumber operator /(ComplexNumber other);
  ComplexNumber divide(ComplexNumber complexNumber1, ComplexNumber complexNumber2);
  bool operator ==(other);
  
}
